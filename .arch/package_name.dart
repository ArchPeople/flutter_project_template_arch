import 'dart:io';

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

  stdout.write('What is the package name? ');
  final packageName = stdin.readLineSync()!;

  await Process.run('dart', [
    'run',
    'change_app_package_name:main',
    packageName,
  ], runInShell: true);

  print('\n✅ Package name succesfully changed to: ${packageName}');
}
