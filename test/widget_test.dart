import 'package:flutter_test/flutter_test.dart';

import 'package:login_screen/app.dart';

void main() {
  testWidgets('Login screen validates empty email', (tester) async {
    await tester.pumpWidget(const App());

    expect(find.text('Email address'), findsOneWidget);
    expect(find.text('Log In'), findsOneWidget);

    await tester.ensureVisible(find.text('Log In'));
    await tester.tap(find.text('Log In'));
    await tester.pump();
    expect(find.text('Please enter your email'), findsOneWidget);
  });
}
