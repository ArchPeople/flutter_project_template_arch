import 'dart:io';

Future<void> main({bool android = true}) async {
  await Process.run('flutter', [
    'clean',
    'build_runner',
    'clean',
  ], runInShell: true);
  try {
    print('Cleaning the project 🧹');

    ProcessResult result;
    if (android) {
      result = await Process.run('sh', [
        '-c',
        'rm -rf ios/Pods && '
            'rm -rf ios/Podfile.lock && '
            'flutter clean && '
            'flutter pub get && '
            'cd android && ./gradlew clean && '
            'cd .. && '
            'cd ios && pod install --repo-update && '
            'cd ..',
      ], runInShell: true);
    } else {
      result = await Process.run('sh', [
        '-c',
        'rm -rf ios/Pods && '
            'rm -rf ios/Podfile.lock && '
            'flutter clean && '
            'flutter pub get && '
            'cd ios && pod install --repo-update && '
            'cd ..',
      ], runInShell: true);
    }

    if (result.exitCode == 0) {
      print('\nProject is now clean ✨');
    } else {
      print('\n❌ Cleaning failed on Android:');
      print(result.stderr);
      print('\nRetrying without cleaning Android...');
      await main(android: false);
    }
  } catch (e) {
    print('\n❌ Something went wrong when cleaning the project');
    print(e);
  }
}
