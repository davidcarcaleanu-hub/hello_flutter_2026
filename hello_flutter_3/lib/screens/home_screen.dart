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
      body: Image.network(
        'https://www.lummi.ai/api/render/image/1a65a92a-2b53-4fa8-8fbd-7165bf785f3c?token=eyJhbGciOiJIUzI1NiJ9.eyJpZHMiOlsiMWE2NWE5MmEtMmI1My00ZmE4LThmYmQtNzE2NWJmNzg1ZjNjIl0sInJlc29sdXRpb24iOiJtZWRpdW0iLCJyZW5kZXJTcGVjcyI6eyJlZmZlY3RzIjp7InJlZnJhbWUiOnt9fX0sInNob3VsZEF1dG9Eb3dubG9hZCI6ZmFsc2UsImp0aSI6ImFqUFlxaVNmYTFOdExNSzdPblJVcyIsImlhdCI6MTc5NTA3OTM0OCwiZXhwIjoxNzk1MDc5NDA4fQ.mg8lqdc1cQUXQkKlCInx80lpXYamQnRKfFTX4k44ztk',
      ),
    );
  }
}
