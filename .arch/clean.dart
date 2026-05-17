import 'dart:io';

Future<void> main() async {
  try {
    print('\nCleaning the project 🧹');

    final result = await Process.run(
      'sh',
      [
        '-c',
        'rm -rf ios/Pods && '
            'rm -rf ios/Podfile.lock && '
            'flutter clean && '
            'flutter pub get && '
            'cd android && ./gradlew clean && '
            'cd .. && '
            'cd ios && pod install --repo-update && '
            'cd ..',
      ],
      runInShell: true,
    );

    if (result.exitCode == 0) {
      print('\nProject is now clean ✨');
    } else {
      print('\n❌ Cleaning failed');
      print(result.stderr);
    }
  } catch (e) {
    print('\n❌ Something went wrong when cleaning the project');
    print(e);
  }
}