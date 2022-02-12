import 'package:agendaboa_assignment_parikshit/repositories/counter_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counterclub_state.dart';

class CounterclubCubit extends Cubit<CounterclubState> {
  final CounterRepository? counterRepository;
  CounterclubCubit({this.counterRepository})
      : super(CounterclubInitial(
            counterA: counterRepository!.counterA,
            counterB: counterRepository.counterB,
            counterC: counterRepository.counterC,
            tabIndex: counterRepository.selectedTab));

  resetAll() async {
    await counterRepository!.resetAll();
    emit(CounterclubInitial(
        counterA: counterRepository!.counterA,
        counterB: counterRepository!.counterB,
        counterC: counterRepository!.counterC,
        tabIndex: counterRepository!.selectedTab));
  }

  increment() async {
    await counterRepository!.increment();
    emit(CounterclubInitial(
        counterA: counterRepository!.counterA,
        counterB: counterRepository!.counterB,
        counterC: counterRepository!.counterC,
        tabIndex: counterRepository!.selectedTab));
  }

  changeTab(int index) async {
    await counterRepository!.selectTab(index);
    emit(CounterclubInitial(
        counterA: counterRepository!.counterA,
        counterB: counterRepository!.counterB,
        counterC: counterRepository!.counterC,
        tabIndex: counterRepository!.selectedTab));
  }
}
