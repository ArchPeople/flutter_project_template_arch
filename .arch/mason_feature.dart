import 'dart:io';

String normalizeFeatureName(String value) {
  return value
      .trim()
      .toLowerCase()
      .replaceAll(RegExp(r'[^a-z0-9]+'), '_')
      .replaceAll(RegExp(r'^_+|_+$'), '');
}

String toPascalCase(String value) {
  return value
      .split('_')
      .where((part) => part.isNotEmpty)
      .map((part) => '${part[0].toUpperCase()}${part.substring(1)}')
      .join();
}

String toCamelCase(String value) {
  final pascalCase = toPascalCase(value);
  return '${pascalCase[0].toLowerCase()}${pascalCase.substring(1)}';
}

String getPackageName() {
  final pubspec = File('pubspec.yaml').readAsStringSync();
  final match = RegExp(r'^name:\s*([^\s#]+)', multiLine: true).firstMatch(pubspec);

  if (match == null) {
    throw StateError('Package name was not found in pubspec.yaml.');
  }

  return match.group(1)!;
}

void addRepositoryRegistration(String featureName) {
  const repositoryModulePath =
      'lib/core/dependencies/modules/repository_module.dart';
  const importAnchor = '// @mason-import-anchor <-- Do not remove';
  const anchor = '// @mason-anchor <-- Do not remove';
  final packageName = getPackageName();

  final file = File(repositoryModulePath);
  final content = file.readAsStringSync();
  final pascalFeatureName = toPascalCase(featureName);
  final repositoryImport =
      "import 'package:$packageName/features/$featureName/repository/${featureName}_repository.dart';";
  final registration =
      '''  
getIt.registerLazySingleton<${pascalFeatureName}Repository>(
    () => ${pascalFeatureName}RepositoryImpl(demoData: getIt<DemoData>()),
  );
  $anchor''';

  if (!content.contains(anchor)) {
    throw StateError('Mason anchor was not found in $repositoryModulePath.');
  }
  if (!content.contains(importAnchor)) {
    throw StateError(
      'Mason import anchor was not found in $repositoryModulePath.',
    );
  }

  final updatedContent = content
      .replaceFirst(importAnchor, '$repositoryImport\n$importAnchor')
      .replaceFirst(anchor, registration);

  file.writeAsStringSync(updatedContent);
}

void addNavigationPath(String featureName) {
  const navigationPath = 'lib/app/navigation/path/navigation_path.dart';
  const anchor = '// @mason-anchor <-- Do not remove';

  final file = File(navigationPath);
  final content = file.readAsStringSync();
  final routeName = toCamelCase(featureName);
  final routePath = featureName.replaceAll('_', '-');
  final route = "static String $routeName = '/$routePath';\n  $anchor";

  if (!content.contains(anchor)) {
    throw StateError('Mason anchor was not found in $navigationPath.');
  }

  file.writeAsStringSync(content.replaceFirst(anchor, route));
}

void addRouterRoute(String featureName) {
  const routerPath = 'lib/app/navigation/router.dart';
  const importAnchor = '// @mason-import-anchor <-- Do not remove';
  const anchor = '// @mason-anchor <-- Do not remove';
  final packageName = getPackageName();

  final file = File(routerPath);
  final content = file.readAsStringSync();
  final pascalFeatureName = toPascalCase(featureName);
  final viewImport =
      "import 'package:$packageName/features/$featureName/view/${featureName}_view.dart';";
  final route =
      '''GoRoute(
      path: NavigationPath.${toCamelCase(featureName)},
      builder: (context, state) {
        return ${pascalFeatureName}View();
      },
    ),
    $anchor''';

  if (!content.contains(importAnchor)) {
    throw StateError('Mason import anchor was not found in $routerPath.');
  }
  if (!content.contains(anchor)) {
    throw StateError('Mason anchor was not found in $routerPath.');
  }

  final updatedContent = content
      .replaceFirst(importAnchor, '$viewImport\n$importAnchor')
      .replaceFirst(anchor, route);

  file.writeAsStringSync(updatedContent);
}

Future<void> main() async {
  stdout.write('What is the feature name? (Example: product_list) ');
  final input = stdin.readLineSync()?.trim() ?? '';
  final featureName = normalizeFeatureName(input);

  if (featureName.isEmpty) {
    stderr.writeln('Feature name cannot be empty.');
    exitCode = 1;
    return;
  }

  stdout.writeln('🚧 Generating feature...');

  final process = await Process.start('mason', [
    'make',
    'feature',
    '--name',
    featureName,
  ], runInShell: true);

  await Future.wait([
    stdout.addStream(process.stdout),
    stderr.addStream(process.stderr),
  ]);

  final result = await process.exitCode;
  if (result != 0) {
    exitCode = result;
    return;
  }

  addRepositoryRegistration(featureName);
  addNavigationPath(featureName);
  addRouterRoute(featureName);
  stdout.writeln(
    '🏗️ Feature is ready at lib/features/$featureName/view/${featureName}_view.dart',
  );
}
