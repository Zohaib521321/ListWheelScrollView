import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> items = [
    ListTile(
      leading: Icon(Icons.local_airport, size: 50),
      title: Text('Airport'),
      subtitle: Text('Description'),
    ),
    ListTile(
      leading: Icon(Icons.local_convenience_store, size: 50),
      title: Text('Convenience Store'),
      subtitle: Text('Description'),
    ),
    ListTile(
      leading: Icon(Icons.local_dining, size: 50),
      title: Text('Dining'),
      subtitle: Text('Description'),
    ),
    ListTile(
      leading: Icon(Icons.local_drink, size: 50),
      title: Text('Drink'),
      subtitle: Text('Description'),
    ),
    ListTile(
      leading: Icon(Icons.local_florist, size: 50),
      title: Text('Florist'),
      subtitle: Text('Description'),
    ),
    ListTile(
      leading: Icon(Icons.local_gas_station, size: 50),
      title: Text('Gas Station'),
      subtitle: Text('Description'),
    ),
    ListTile(
      leading: Icon(Icons.local_grocery_store, size: 50),
      title: Text('Grocery Store'),
      subtitle: Text('Description'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ListWheelScrollView"),
        ),
        body:
        Center(
            child: ListWheelScrollView(
              itemExtent: 75,
              children: items,
            )
        )

    );
  }

}