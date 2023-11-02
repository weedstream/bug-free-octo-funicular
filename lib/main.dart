import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const GuidedApp());
}

class GuidedApp extends StatefulWidget {
  const GuidedApp({super.key});

  @override
  State<GuidedApp> createState() => _GuidedAppState();
}

class _GuidedAppState extends State<GuidedApp> {
  List<Widget> widgetguided = [];

  static const TEXT_STYLE_NORMAL = const TextStyle(
      color: Colors.blue, fontSize: 18, fontWeight: FontWeight.normal);

  static const TEXT_STYLE_SELECTED = const TextStyle(
      color: Colors.orange, fontSize: 18, fontWeight: FontWeight.normal);

  int _selectedinbox = 1;
  select(index) {
    setState(() {
      _selectedinbox = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView App'),
          backgroundColor: Colors.blueAccent,
        ),
        body: ListView(
          children: [
            buildListTile('Accessibility', 'Accessibility Setting', 0),
            buildListTile('Another Item', 'Another Setting', 1),
            // Add more ListTiles as needed
          ],
        ),
      ),
    );
  }

  ListTile buildListTile(String title, String subtitle, int index) {
    return ListTile(
      leading: Icon(Icons.accessibility_new_rounded),
      title: Text(
        title,
        style: _selectedinbox == index ? TEXT_STYLE_SELECTED : TEXT_STYLE_NORMAL,
      ),
      subtitle: Text(subtitle),
      trailing: Icon(Icons.settings),
      onTap: () => select(index),
    );
  }

}
