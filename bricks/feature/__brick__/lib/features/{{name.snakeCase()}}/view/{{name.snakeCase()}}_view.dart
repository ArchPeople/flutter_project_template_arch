import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_template_arch/app/widgets/atoms/text/text_base.dart';
import 'package:flutter_project_template_arch/core/dependencies/injection.dart';
import 'package:flutter_project_template_arch/features/{{name.snakeCase()}}/cubit/main/{{name.snakeCase()}}_cubit.dart';
import 'package:flutter_project_template_arch/features/{{name.snakeCase()}}/repository/{{name.snakeCase()}}_repository.dart';

// Main Screen
part 'screen/{{name.snakeCase()}}_screen.dart';

// Sections
part 'section/app_bar_section.dart';
part 'section/body_section.dart';

// Widget
part 'widget/sample_widget.dart';

class {{name.pascalCase()}}View extends StatelessWidget {
  const {{name.pascalCase()}}View({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              {{name.pascalCase()}}Cubit(repository: getIt<{{name.pascalCase()}}Repository>()),
        ),
      ],
      child: const {{name.pascalCase()}}Screen(),
    );
  }
}
