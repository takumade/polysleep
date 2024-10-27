

import 'package:flutter_bloc/flutter_bloc.dart';

sealed class BotomNavEvent {
  final int index;

  BotomNavEvent(this.index);
}


final class ChangeNavEvent extends BotomNavEvent {
  ChangeNavEvent(super.index);
}



class NavBloc extends Bloc<BotomNavEvent, int> {

    NavBloc(): super(0) {
       on<ChangeNavEvent>((event, emit) {
       emit(event.index);
    });
    }


      @override
  void onChange(Change<int> change) {
    // ignore: avoid_print
    print(change);
    super.onChange(change);
  }
}