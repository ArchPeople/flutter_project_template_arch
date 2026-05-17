import 'dart:io';

Future<void> main() async {
  print('\n Cleaning the project 🧹')
  final result = await Process.run('sh', [
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
}
