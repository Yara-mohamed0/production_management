import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:production_management/features/home/ui/screen/home_screen.dart';

import 'state.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget> bottomScreens = [
    const HomeScreen(),
    Container(
      color: Colors.purple,
    ),
    Container(
      color: Colors.deepPurple,
    ),
    Container(
      color: Colors.deepPurpleAccent,
    ),
  ];

  void changeBottom(int index) {
    currentIndex = index;
    emit(HomeBottomChange());
  }
}
