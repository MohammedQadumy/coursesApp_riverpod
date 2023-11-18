import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'Pages/welcome/welcome.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  const MyHomePage(),
    );
  }
}


final appCount = StateProvider<int>((ref){
  return 1 ;
});

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key,});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

     int count = ref.watch(appCount);

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              count.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: (){
              ref.read(appCount.notifier).state++;
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
            heroTag: "inc",
          ),
          FloatingActionButton(
            onPressed: (){
              ref.read(appCount.notifier).state--;
            },
            tooltip: 'Decrement',
            child: const Icon(Icons.minimize),
            heroTag: "dec",
          ),

          FloatingActionButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Welcome(),));
            },
            tooltip: 'SecondPage',
            child: const Icon(Icons.arrow_right_rounded),
            heroTag: "secPage",
          ),
          
        ],
      ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Text("count value"),
      ),
    );
  }
}
