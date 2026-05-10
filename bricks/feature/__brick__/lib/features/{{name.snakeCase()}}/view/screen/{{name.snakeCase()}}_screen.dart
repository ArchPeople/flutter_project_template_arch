part of '../{{name.snakeCase()}}_view.dart';

class {{name.pascalCase()}}Screen extends StatefulWidget {
  const {{name.pascalCase()}}Screen({super.key});

  @override
  State<{{name.pascalCase()}}Screen> createState() => _{{name.pascalCase()}}ScreenState();
}

class _{{name.pascalCase()}}ScreenState extends State<{{name.pascalCase()}}Screen> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<{{name.pascalCase()}}Cubit, {{name.pascalCase()}}State>(listener: (context, state) {}),
      ],
      child: Scaffold(
        appBar: _AppBarSection(),
        body: SingleChildScrollView(
          child: Column(children: const [_BodySection()]),
        ),
      ),
    );
  }
}
