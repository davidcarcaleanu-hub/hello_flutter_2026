// Pachetul Material: widget-uri de bază, culori și iconițe.
import 'package:material_ui/material_ui.dart';

/// Opțiunile din meniul cu trei puncte al ecranului principal.
enum MenuAction { refresh, settings, logout }

/// Ecranul principal al aplicației: bara de sus, o imagine și un buton plutitor.
class HomeScreen extends StatelessWidget {
  // Constructorul, forma scurtă pentru `const HomeScreen({super.key})`.
  const new({super.key});

  // build descrie ce afișează ecranul.
  @override
  Widget build(BuildContext context) {
    // Scaffold este scheletul unui ecran Material: bară sus, conținut, buton plutitor.
    return Scaffold(
      // Culoarea fundalului, în spatele conținutului.
      backgroundColor: Colors.grey,

      // AppBar este bara de sus a ecranului.
      appBar: AppBar(
        // Titlul din bară.
        title: const Text('Our First Home Screen!'),

        // Culoarea barei.
        backgroundColor: Colors.black,

        // Culoarea titlului și a iconițelor din bară.
        foregroundColor: Colors.white,

        // Cât de ridicată pare bara deasupra conținutului; o valoare mai mare dă o umbră mai mare.
        elevation: 2.0,

        // Culoarea umbrei de sub bară.
        shadowColor: Colors.black,

        // actions: butoanele din dreapta barei, în ordinea în care apar.
        actions: [
          // IconButton este un buton care afișează doar o iconiță.
          IconButton(
            // Ce se întâmplă la apăsare; deocamdată nimic, funcția este goală.
            onPressed: () {},

            // Iconița butonului, din colecția Icons.
            icon: const Icon(Icons.leaderboard),
          ),

          // Al doilea buton din bară.
          IconButton(
            // Nici acesta nu face încă nimic.
            onPressed: () {},

            // O altă iconiță din colecția Icons.
            icon: const Icon(Icons.ac_unit_rounded),
          ),

          // PopupMenuButton afișează butonul cu trei puncte, care deschide un meniu.
          // <MenuAction> arată tipul valorilor din meniu.
          PopupMenuButton<MenuAction>(
            // Textul care apare când ții mouse-ul deasupra butonului.
            tooltip: 'More options',

            // Se apelează când alegi o opțiune; item este valoarea opțiunii alese.
            onSelected: (MenuAction item) {
              // switch alege ce cod rulează, după opțiunea aleasă, ca în Java și JavaScript.
              switch (item) {
                case MenuAction.refresh:
                  // Aici vom reîncărca datele.
                  break;
                case MenuAction.settings:
                  // Aici vom deschide ecranul de setări.
                  break;
                case MenuAction.logout:
                  // Aici vom deconecta utilizatorul.
                  break;
              }
            },

            // Construiește lista de opțiuni, de fiecare dată când se deschide meniul.
            itemBuilder: (BuildContext context) => <PopupMenuEntry<MenuAction>>[
              // O opțiune din meniu, cu valoarea ei și widget-ul afișat.
              const PopupMenuItem<MenuAction>(
                // Valoarea primită de onSelected când alegi opțiunea.
                value: MenuAction.refresh,

                // ListTile este un rând cu iconiță în stânga și text.
                child: ListTile(
                  // Iconița din stânga.
                  leading: Icon(Icons.refresh),

                  // Textul rândului.
                  title: Text('Refresh'),

                  // Fără spațiu interior în plus, ca rândul să se alinieze cu celelalte opțiuni.
                  contentPadding: EdgeInsets.zero,
                ),
              ),

              // O opțiune care afișează doar text.
              const PopupMenuItem<MenuAction>(
                value: MenuAction.settings,
                child: Text('Settings'),
              ),

              // O linie orizontală care separă opțiunile.
              const PopupMenuDivider(),

              // Ultima opțiune, despărțită de celelalte prin linie.
              const PopupMenuItem<MenuAction>(
                value: MenuAction.logout,
                child: Text('Log out'),
              ),
            ],
          ),
        ],
      ),

      // body: conținutul principal al ecranului, sub bara de sus.
      body: Center(
        // Padding lasă 20 de pixeli liberi în jurul imaginii.
        child: Padding(
          padding: const EdgeInsets.all(20.0),

          // Image.network descarcă o imagine de pe internet și o afișează.
          child: Image.network(
            // Adresa imaginii, de pe un site străin: bine pentru învățat, dar o aplicație reală
            // folosește imagini proprii, din assets sau de pe serverul ei (vezi README).
            'https://plus.unsplash.com/premium_photo-1792519573925-8e58242c5d9e?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',

            // Imaginea stă în mijlocul spațiului ei.
            alignment: AlignmentGeometry.center,
          ),
        ),
      ),

      // Butonul rotund care plutește deasupra conținutului, în colțul din dreapta jos.
      // .large este varianta mai mare a butonului.
      floatingActionButton: FloatingActionButton.large(
        // Culoarea butonului.
        backgroundColor: Colors.black,

        // Culoarea iconiței din buton.
        foregroundColor: Colors.white,

        // Ce se întâmplă la apăsare; deocamdată nimic.
        onPressed: () {},

        // Iconița din buton.
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
