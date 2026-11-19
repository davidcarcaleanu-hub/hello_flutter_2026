import 'package:material_ui/material_ui.dart';

enum MenuAction { refresh, settings, logout }

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
          // Overflow menu (three dots)
          PopupMenuButton<MenuAction>(
            tooltip: 'More options',
            onSelected: (MenuAction item) {
              switch (item) {
                case MenuAction.refresh:
                  // Handle refresh
                  break;
                case MenuAction.settings:
                  // Navigate to settings
                  break;
                case MenuAction.logout:
                  // Handle logout
                  break;
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<MenuAction>>[
              const PopupMenuItem<MenuAction>(
                value: MenuAction.refresh,
                child: ListTile(
                  leading: Icon(Icons.refresh),
                  title: Text('Refresh'),
                  contentPadding: EdgeInsets.zero,
                ),
              ),
              const PopupMenuItem<MenuAction>(
                value: MenuAction.settings,
                child: Text('Settings'),
              ),
              const PopupMenuDivider(), // Optional visual separator
              const PopupMenuItem<MenuAction>(
                value: MenuAction.logout,
                child: Text('Log out'),
              ),
            ],
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
      floatingActionButton: FloatingActionButton.large(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        onPressed: () {},
        child: Icon(Icons.refresh),
      ),
    );
  }
}
