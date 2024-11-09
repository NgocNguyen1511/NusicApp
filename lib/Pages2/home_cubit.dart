import 'package:equatable/equatable.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//viet logic
part 'home_sate.dart';

class HomeCubit extends Cubit<HomeState>{
  HomeCubit(): super(HomeState());

  void changeTab(int index){
    emit(state.copyWith(
      selectedIndex: index,
    ));
  }
}
