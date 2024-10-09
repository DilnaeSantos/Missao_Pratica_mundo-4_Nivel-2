import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget implements PreferredSizeWidget {
  const NavigationBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Explore Mundo'),
      centerTitle: true,
    );
  }
}
