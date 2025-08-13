import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_template_arch/app/assets/colors/asset_colors.dart';
import 'package:flutter_project_template_arch/core/common/view_state/view_state.dart';
import 'package:flutter_project_template_arch/core/dependencies/injection.dart';
import 'package:flutter_project_template_arch/features/demo_feature/cubit/demo_feature_cubit.dart';
import 'package:flutter_project_template_arch/features/demo_feature/repository/demo_feature_repository.dart';
import 'package:flutter_project_template_arch/app/navigation/object/demo_navigation_object.dart';
import 'package:flutter_project_template_arch/app/themes/padding/theme_padding.dart';
import 'package:flutter_project_template_arch/app/widgets/atoms/text/text_base.dart';
import 'package:flutter_project_template_arch/app/widgets/organisms/status_controller_widget.dart';

// Screen
part 'screen/demo_feature_screen.dart';

class DemoFeatureView extends StatelessWidget {
  final DemoNavigationObject? extra;

  const DemoFeatureView({super.key, this.extra});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          DemoFeatureCubit(repository: getIt<DemoFeatureRepository>())
            ..demoCubitApiFunction(),
      child: DemoFeatureScreen(),
    );
  }
}
