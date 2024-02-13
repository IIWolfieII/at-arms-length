import 'package:at_arms_length/components/_pin.dart';
import 'package:at_arms_length/models/pinned.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const colourScheme = {
      'bg': Color.fromARGB(1, 29, 27, 34),
      'text': Color.fromARGB(1, 240, 241, 249),
      'card': Color.fromARGB(1, 97, 70, 160),
      'accent': Color.fromARGB(1, 48, 107, 172)
    };

    return MaterialApp(
      title: 'At Arm\'s Length',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSwatch(
          accentColor: colourScheme['accent'],
          cardColor: colourScheme['card'],
          backgroundColor: colourScheme['bg'],
          errorColor: colourScheme['error'],
          brightness: Brightness.dark,
          // backgroundColor: colourScheme['bg'],
          // cardColor: colourScheme['card'],
        ),
      ),
      home: const MyHomePage(title: 'Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List<Pinned> pins = [
    Pinned(
        type: PinType.comment,
        text: 'That video was really cool!',
        date: DateTime.now()),
    Pinned(
        type: PinType.comment,
        text: 'That video was really cool!',
        date: DateTime.now()),
    Pinned(
        type: PinType.link,
        text: 'That video was really cool!',
        date: DateTime.now()),
  ];

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  Widget pinTemplate(pinned) {
    return Pin(pinned: pinned);
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      // appBar: AppBar(
      //   // TRY THIS: Try changing the color here to a specific color (to
      //   // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
      //   // change color while the other colors stay the same.
      //   backgroundColor: Theme.of(context).colorScheme.background,
      //   // Here we take the value from the MyHomePage object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //   title: Text(widget.title),
      // ),
      body: Column(
        children: [
          // Expanded(
          //   flex: 1,
          //   child: Expanded(
          //       child: Center(
          //           child: Container(
          //     color: Colors.amber,
          //   ))),
          // ),
          Expanded(
            flex: 6,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                      color: Theme.of(context).colorScheme.primary,
                      child: ListView(
                        children: pins.map((pin) => pinTemplate(pin)).toList(),
                      )),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    color: Theme.of(context).colorScheme.background,
                  ),
                )
              ],
            ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                color: Theme.of(context).colorScheme.background,
              ))
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
