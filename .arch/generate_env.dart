import 'dart:io';

Future<void> main() async {
  await Process.run('dart', ['run', 'build_runner', 'clean'], runInShell: true);

  await Process.run('dart', ['run', 'build_runner', 'build'], runInShell: true);

  await Process.run('flutter', ['gen-l10n'], runInShell: true);

  print('✅ Environment and localizations generated successfully');
}
