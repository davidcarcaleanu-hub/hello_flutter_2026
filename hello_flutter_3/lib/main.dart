// Pachetul Material: widget-uri de bază, culori și iconițe.
import 'package:material_ui/material_ui.dart';

// Ecranul principal, aflat în alt fișier, în folderul screens/.
import 'screens/home_screen.dart';

/// Punctul de intrare al aplicației: pornește widget-ul MyApp.
void main() {
  // main face un singur lucru: afișează aplicația. Restul codului stă în widget-uri.
  runApp(const MyApp());
}

/// Rădăcina aplicației: configurează MaterialApp și alege primul ecran.
class MyApp extends StatelessWidget {
  // Constructorul, forma scurtă pentru `const MyApp({super.key})`.
  const new({super.key});

  // build descrie ce afișează widget-ul; Flutter o apelează când are nevoie să-l deseneze.
  @override
  Widget build(BuildContext context) {
    // MaterialApp pregătește aplicația: tema, direcția textului, navigarea între ecrane.
    return MaterialApp(
      // Ascunde eticheta roșie "DEBUG" din colțul ecranului.
      debugShowCheckedModeBanner: false,

      // Ecranul afișat când pornește aplicația.
      home: HomeScreen(),
    );
  }
}
