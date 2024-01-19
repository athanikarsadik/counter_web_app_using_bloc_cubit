import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter_bloc.dart';

class IncDcrPage extends StatelessWidget {
  const IncDcrPage({super.key});
  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context);
    // final counterCubit = BlocProvider.of<CounterCubit>(context);
    return Scaffold(
        floatingActionButton: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: () {
            // counterCubit.increment();
            counterBloc.add(CounterIncremented());
            
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
        SizedBox(
          width: 10,
        ),
        FloatingActionButton(
          onPressed: () {
            // counterCubit.decrement();
            counterBloc.add(CounterDecremented());
          },
          tooltip: 'Decrement',
          child: const Icon(Icons.remove),
        ),
      ],
    ));
  }
}
