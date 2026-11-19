import 'package:material_ui/material_ui.dart';

class HomeScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Our First Home Screen!'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        elevation: 2.0,
        shadowColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.leaderboard),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.ac_unit_rounded),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Image.network(
            'https://plus.unsplash.com/premium_photo-1792519573925-8e58242c5d9e?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
            alignment: AlignmentGeometry.center,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        onPressed: () {},
        child: Icon(Icons.refresh),
      ),
    );
  }
}
