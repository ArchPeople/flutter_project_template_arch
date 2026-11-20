part of 'locale_cubit.dart';

final class LocaleState extends Equatable {
  final Locale? locale;

  const LocaleState({this.locale});

  @override
  List<Object?> get props => [locale];
}
