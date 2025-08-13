import 'package:equatable/equatable.dart';

class DemoNavigationObject extends Equatable {
  final String id;

  const DemoNavigationObject({required this.id});

  @override
  List<Object?> get props => [id];
}
