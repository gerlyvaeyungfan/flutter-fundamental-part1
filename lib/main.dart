import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // biar lebih rapi
      home: Scaffold(body: MyLayout()),
    );
  }
}

class MyLayout extends StatelessWidget {
  const MyLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            showAlertDialog(context);
          },
          child: const Text('Show alert'),
        ),
      ),
    );
  }
}

void showAlertDialog(BuildContext context) {
  // Tombol OK
  final okButton = TextButton(
    onPressed: () {
      Navigator.of(context).pop();
    },
    child: const Text("OK"),
  );

  // Dialog
  final alert = AlertDialog(
    title: const Text("My title"),
    content: const Text("This is my message."),
    actions: [okButton],
  );

  // Tampilkan dialog
  showDialog(context: context, builder: (context) => alert);
}
