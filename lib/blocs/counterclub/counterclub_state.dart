part of 'counterclub_cubit.dart';

@immutable
abstract class CounterclubState {}

class CounterclubInitial extends CounterclubState {
  final int? counterA;
  final int? counterB;
  final int? counterC;
  final int? tabIndex;
  CounterclubInitial(
      {this.counterA, this.counterB, this.counterC, this.tabIndex});
}

class CounterclubProcessing extends CounterclubState {
  final int? counterA;
  final int? counterB;
  final int? counterC;
  final int? tabIndex;
  CounterclubProcessing(
      {this.counterA, this.counterB, this.counterC, this.tabIndex});
}
