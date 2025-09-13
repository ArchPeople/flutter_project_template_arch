part of 'system_mode_cubit.dart';

final class SystemModeState extends Equatable {
  final ThemeMode systemMode;

  const SystemModeState({required this.systemMode});

  factory SystemModeState.initial() =>
      SystemModeState(systemMode: ThemeSystemMode.system);

  SystemModeState copyWith({ThemeMode? systemMode}) =>
      SystemModeState(systemMode: systemMode ?? this.systemMode);

  @override
  List<Object?> get props => [systemMode];
}
