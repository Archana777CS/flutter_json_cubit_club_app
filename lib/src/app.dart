import 'package:club_sample/src/features/club/pages/club_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home:   ClubPage(),
    );
  }
}
