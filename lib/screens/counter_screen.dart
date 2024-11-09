import 'package:flutter/material.dart';
import 'package:provider/provider.dart';





class CounterProvider extends ChangeNotifier{ //ncc
  int counter = 0;

  int get getCounter => counter;

  void add(){
    counter++;
    notifyListeners();
  }
}



class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          context.watch<CounterProvider>().counter.toString(),
          style: TextStyle(fontSize: 50),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          context.read<CounterProvider>().add();
        },
      ),
    );
  }
}
