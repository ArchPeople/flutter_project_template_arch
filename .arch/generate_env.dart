import 'dart:io';

Future<void> main() async {
  await Process.run('dart', ['run', 'build_runner', 'clean'], runInShell: true);

await Process.run('dart', ['run', 'build_runner', 'build'], runInShell: true);

  print('✅ Environment generated successfully');
}
