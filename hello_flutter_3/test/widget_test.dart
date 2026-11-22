// Un test de widget: pornește aplicația într-un mediu de test și verifică ce apare pe ecran.
// Se rulează cu `flutter test`.

import 'package:flutter_test/flutter_test.dart';
import 'package:hello_flutter_3/main.dart';
import 'package:hello_flutter_3/screens/home_screen.dart';
import 'package:material_ui/material_ui.dart';

/// Rulează testele aplicației.
void main() {
  testWidgets('Afișează ecranul principal, cu titlul și butoanele lui', (
    WidgetTester tester,
  ) async {
    // Pornește aplicația și desenează primul cadru.
    await tester.pumpWidget(const MyApp());

    // Titlul din bara de sus.
    expect(find.text('Our First Home Screen!'), findsOneWidget);

    // Butonul plutitor și butonul cu trei puncte al meniului.
    expect(find.byType(FloatingActionButton), findsOneWidget);
    expect(find.byType(PopupMenuButton<MenuAction>), findsOneWidget);

    // În teste nu există internet, așa că imaginea nu se poate descărca. Lăsăm cererea să se
    // termine și preluăm eroarea, ca să nu pice testul din cauza ei.
    await tester.runAsync(() => Future<void>.delayed(const Duration(milliseconds: 100)));
    expect(tester.takeException(), isA<NetworkImageLoadException>());
  });
}
