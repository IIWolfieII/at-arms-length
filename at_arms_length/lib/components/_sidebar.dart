import 'package:flutter/material.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  _SidebarState createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  int _counter = 0;

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

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Center(
        child: Container(
          color: Colors.blueAccent,
          child: Column(
            /* Column is also a layout widget. It takes a list of children and
            arranges them vertically. By default, it sizes itself to fit its
            children horizontally, and tries to be as tall as its parent.
            
            Column has various properties to control how it sizes itself and
            how it positions its children. Here we use mainAxisAlignment to
            center the children vertically; the main axis here is the vertical
            axis because Columns are vertical (the cross axis would be
            horizontal).
            
            TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
            action in the IDE, or press "p" in the console), to see the
            wireframe for each widget. */
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
