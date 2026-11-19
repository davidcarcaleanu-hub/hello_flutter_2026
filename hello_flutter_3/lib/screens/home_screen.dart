import 'package:flutter/widgets.dart';
import 'package:material_ui/material_ui.dart';

class HomeScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Our First Home Screen!'),
        backgroundColor: Colors.blue[200],
        elevation: 20.0,
        shadowColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.ac_unit_rounded),
          ),
        ],
      ),
    );
  }
}
