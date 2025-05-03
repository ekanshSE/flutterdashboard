import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:asflapp/widgets/dashboardpage.dart';

void main() => runApp(DashboardApp());

class DashboardApp extends StatelessWidget {
  const DashboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        scaffoldBackgroundColor: const Color(0xFFF2F3F5),
      ),
      home: DashboardPage(),
    );
  }
}
