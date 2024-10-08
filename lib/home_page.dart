import 'package:flutter/material.dart';
import 'title_section.dart';
import 'button_section.dart';
import 'text_section.dart';
import 'image_section.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Layout Demo'),
      ),
      body: ListView(
        children: [
          ImageSection(),
          TitleSection(), 
          ButtonSection(),
          TextSection(),
        ],
      ),
    );
  }
}
