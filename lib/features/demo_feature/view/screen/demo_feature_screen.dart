part of '../demo_feature_view.dart';

class DemoFeatureScreen extends StatefulWidget {
  const DemoFeatureScreen({super.key});

  @override
  State<DemoFeatureScreen> createState() => _DemoFeatureScreenState();
}

class _DemoFeatureScreenState extends State<DemoFeatureScreen> {
  late final _demoFeatureCubit = context.read<DemoFeatureCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<DemoFeatureCubit, DemoFeatureState>(
      listener: (context, state) {
        if (state.demoState == ViewState.loading) {
          // Do something when loading
        } else if (state.demoState == ViewState.success) {
          // Do sometheing when success
        } else if (state.demoState == ViewState.error) {
          // Do sometheing when error
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const TextBase(label: 'Demo Feature'),
          centerTitle: false,
        ),
        body: Padding(
          padding: context.themePadding.ph16,
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BlocSelector<DemoFeatureCubit, DemoFeatureState, ViewState>(
                  selector: (state) {
                    return state.demoState;
                  },
                  builder: (context, state) {
                    return StatusControllerWidget(
                      title: 'Check API Status',
                      buttonLabel: 'Check',
                      disabled: state == ViewState.loading,
                      statusColor: state == ViewState.loading
                          ? AssetColors.yellow
                          : state == ViewState.success
                          ? AssetColors.green
                          : AssetColors.red,
                      onPressed: () {
                        _demoFeatureCubit.demoCubitApiFunction();
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
