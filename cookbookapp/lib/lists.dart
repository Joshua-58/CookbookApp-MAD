import 'package:cookbookapp/menu.dart';
import 'package:flutter/material.dart';

//page where users can view their grocery lists and create new ones
class ListScreen extends StatefulWidget {
  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideMenu(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Your Lists'),
      ),
      body: Center(),
    );
  }
}
