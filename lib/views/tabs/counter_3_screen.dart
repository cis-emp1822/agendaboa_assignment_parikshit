import 'package:agendaboa_assignment_parikshit/blocs/counterclub/counterclub_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Counter3Screen extends StatelessWidget {
  const Counter3Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'You have pushed the button this many times:',
          ),
          BlocBuilder<CounterclubCubit, CounterclubState>(
              builder: (context, state) => state is CounterclubInitial
                  ? Text(state.counterC.toString())
                  : state is CounterclubProcessing
                      ? Text(state.counterC.toString())
                      : Container())
        ],
      ),
    );
  }
}
