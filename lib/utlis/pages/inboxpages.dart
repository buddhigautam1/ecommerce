import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InboxPage extends StatefulWidget {
  const InboxPage({super.key});

  @override
  State<InboxPage> createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Message',
          style: GoogleFonts.lato(
            textStyle: const TextStyle(
              color: Colors.blue,
              letterSpacing: 2.5,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

      ),
    );
  }
}