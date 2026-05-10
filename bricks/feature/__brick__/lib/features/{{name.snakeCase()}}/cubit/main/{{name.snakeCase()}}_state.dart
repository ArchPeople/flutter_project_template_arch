part of '{{name.snakeCase()}}_cubit.dart';

class {{name.pascalCase()}}State extends Equatable {
  final ViewState state{{name.pascalCase()}};
  const {{name.pascalCase()}}State({
    required this.state{{name.pascalCase()}},
  });

  factory {{name.pascalCase()}}State.initial() =>
    {{name.pascalCase()}}State(
      state{{name.pascalCase()}}: ViewState.initial
  );

  {{name.pascalCase()}}State copyWith({
    ViewState? state{{name.pascalCase()}}
  }) {
    return {{name.pascalCase()}}State(state{{name.pascalCase()}}: state{{name.pascalCase()}} ?? this.state{{name.pascalCase()}});
  }

  @override
  List<Object> get props => [
    state{{name.pascalCase()}}
  ];
}
