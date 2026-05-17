import 'dart:io';

void replaceInFile(String path, String oldValue, String newValue) {
  final file = File(path);

  if (!file.existsSync()) return;

  String content = file.readAsStringSync();

  content = content.replaceAll(oldValue, newValue);

  file.writeAsStringSync(content);
}

void replaceInDirectory(
  String directoryPath,
  String oldValue,
  String newValue,
) {
  final directory = Directory(directoryPath);

  if (!directory.existsSync()) return;

  for (final entity in directory.listSync(recursive: true)) {
    if (entity is! File) continue;

    String content = entity.readAsStringSync();

    content = content.replaceAll(oldValue, newValue);

    entity.writeAsStringSync(content);
  }
}

Future<void> main() async {
  String archIcon = '''
                ▒▒▓▓▓▓▓▓▓▓▓▓▓▓▒
            ▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
          ▓▓▓▓▓▓▒▒░░░░░░░░░░▒▒▓▓▓▓▓▓
         ▓▓▓▓▒░░░          ░░░▒▓▓▓▓▓▓
        ▓▓▓▓▓▒░░              ░░▒▓▓▓▓▓
        ▓▓▓▓▓▒░░              ░░▒▓▓▓▓▓
        ▓▓▓▓▓▒░░              ░░▒▓▓▓▓▓
        ▓▓▓▓▓▒░░              ░░▒▓▓▓▓▓
        ▓▓▓▓▓▒░░              ░░▒▓▓▓▓▓
        ▓▓▓▓▓▒░░              ░░▒▓▓▓▓▓
        ▓▓▓▓▓▒░░              ░░▒▓▓▓▓▓
        ▓▓▓▓▓▒░░              ░░▒▓▓▓▓▓
        ▓▓▓▓▓▒░░              ░░▒▓▓▓▓▓
        ▓▓▓▓▓▒░░              ░░▒▓▓▓▓▓
        ▓▓▓▓▓▒░░              ░░▒▓▓▓▓▓
        ▓▓▓▓▓▓▓▓▓▓▓           ░░▒▓▓▓▓▓
        ▓▓▓▓▓▓▓▓▓▓▓           ░░▒▓▓▓▓▓



   ▓▓▓▓▓▓▓   ▓▓▓▓▓▓▓▓▓▓  ▓▓▓▓▓▓▓▓▓  ▓▓     ▓▓
  ▓▓     ▓▓  ▓▓      ▓▓  ▓▓         ▓▓     ▓▓
  ▓▓▓▓▓▓▓▓▓  ▓▓▓▓▓▓▓▓▓▓  ▓▓         ▓▓▓▓▓▓▓▓▓
  ▓▓     ▓▓  ▓▓    ▓▓    ▓▓         ▓▓     ▓▓
  ▓▓     ▓▓  ▓▓      ▓▓  ▓▓▓▓▓▓▓▓▓  ▓▓     ▓▓
''';

  print(archIcon);
  await Future.delayed(Duration(seconds: 1), () {});
  stdout.write('\nWhat is the app name? ');
  final appName = stdin.readLineSync()!;

  stdout.write('What is the package name? ');
  final packageName = stdin.readLineSync()!;

  stdout.write('What is the repository name? ');
  final repoName = stdin.readLineSync()!;

  /// 1. Change the app name and package name

  await Process.run('dart', [
    'run',
    'change_app_package_name:main',
    packageName,
  ], runInShell: true);

  const pubspecPath = 'pubspec.yaml';
  const gradlePath = 'android/app/build.gradle.kts';
  const projectIOSPath = 'ios/Runner.xcodeproj/project.pbxproj';
  const developmentIOSPath =
      'ios/Runner.xcodeproj/xcshareddata/xcschemes/development.xcscheme';
  const stagingIOSPath =
      'ios/Runner.xcodeproj/xcshareddata/xcschemes/staging.xcscheme';
  const productionIOSPath =
      'ios/Runner.xcodeproj/xcshareddata/xcschemes/production.xcscheme';

  final filePubspec = File(pubspecPath);
  final fileGradle = File(gradlePath);
  final fileProjectIOS = File(projectIOSPath);
  final fileDevelopmentIOS = File(developmentIOSPath);
  final fileStagingIOS = File(stagingIOSPath);
  final fileProductionIOS = File(productionIOSPath);

  String contentPubspec = filePubspec.readAsStringSync();
  String contentGradle = fileGradle.readAsStringSync();
  String contentProjectIOS = fileProjectIOS.readAsStringSync();
  String contentDevelopmentIOS = fileDevelopmentIOS.readAsStringSync();
  String contentStagingIOS = fileStagingIOS.readAsStringSync();
  String contentProductionIOS = fileProductionIOS.readAsStringSync();

  final repoNameMatch = RegExp(
    r'^name:\s*(.+)$',
    multiLine: true,
  ).firstMatch(contentPubspec);

  final oldRepoName = repoNameMatch?.group(1);

  final productionBlockMatch = RegExp(
    r'create\("production"\)\s*\{[\s\S]*?\}',
  ).firstMatch(contentGradle);

  final productionBlock = productionBlockMatch?.group(0);

  final appNameMatch = RegExp(
    r'app_name",\s*"([^"]+)"',
  ).firstMatch(productionBlock ?? '');

  final oldAppName = appNameMatch?.group(1);

  contentGradle = contentGradle.replaceAll(oldAppName ?? '', appName);
  contentProjectIOS = contentProjectIOS.replaceAll(oldAppName ?? '', appName);
  contentDevelopmentIOS = contentDevelopmentIOS.replaceAll(
    oldAppName ?? '',
    appName,
  );
  contentStagingIOS = contentStagingIOS.replaceAll(oldAppName ?? '', appName);
  contentProductionIOS = contentProductionIOS.replaceAll(
    oldAppName ?? '',
    appName,
  );

  fileGradle.writeAsStringSync(contentGradle);
  fileProjectIOS.writeAsStringSync(contentProjectIOS);
  fileDevelopmentIOS.writeAsStringSync(contentDevelopmentIOS);
  fileStagingIOS.writeAsStringSync(contentStagingIOS);
  fileProductionIOS.writeAsStringSync(contentProductionIOS);

  replaceInFile('pubspec.yaml', oldRepoName ?? '', repoName);

  replaceInFile('lib/main.dart', oldRepoName ?? '', repoName);

  replaceInDirectory('bricks', oldRepoName ?? '', repoName);

  replaceInDirectory('lib/app', oldRepoName ?? '', repoName);

  replaceInDirectory('lib/core', oldRepoName ?? '', repoName);

  replaceInDirectory('lib/features', oldRepoName ?? '', repoName);

  replaceInDirectory('test', oldRepoName ?? '', repoName);

  print('\n✅ Initialization complete!');
  print('\nPlease run this manually before running:');
  print(
    '\ndart run .arch/clean.dart && dart run .arch/generate_env.dart',
  );
  print('\nYour app is now ready to run 🚀, Happy coding ~');
}
