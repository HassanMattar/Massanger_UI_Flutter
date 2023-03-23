import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_application_1/modules/Counter/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit.dart';

class Counter extends StatelessWidget {
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                'counter',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    color: Colors.blue,
                    onPressed: () {
                      CounterCubit.get(context).plus();
                    },
                    child: Text(
                      'PLUS',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text('${CounterCubit.get(context).counter}',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: 20,
                  ),
                  MaterialButton(
                    color: Colors.blue,
                    onPressed: () {
                      CounterCubit.get(context).minus();
                    },
                    child: Text(
                      'minus',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}