part of '../{{name.snakeCase()}}_view.dart';

class _AppBarSection extends StatelessWidget implements PreferredSizeWidget {
  const _AppBarSection();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(title: const TextBase(label: '{{name.titleCase()}}'));
  }
}
