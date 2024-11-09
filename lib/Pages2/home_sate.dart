//khai bao bien
part of 'home_cubit.dart';

class HomeState extends Equatable {
  int selectedIndex;

  HomeState({
    this.selectedIndex = 0,
  });

  @override
  List<Object?> get props =>
      [
        selectedIndex,
      ];

  HomeState copyWith({
    int? selectedIndex,
  }) {
    return HomeState(
      selectedIndex: selectedIndex ?? this.selectedIndex,
    );
  }
}
