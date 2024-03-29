import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottonNavBar extends StatelessWidget {
  void Function (int)? onTabChange;
  MyBottonNavBar({
    super.key, 
    required this.onTabChange,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      child: GNav(
        onTabChange:(value) => onTabChange!(value),
        color: Colors.grey[400],
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: Colors.grey[700],
        tabBackgroundColor: Colors.grey.shade400,
        tabBorderRadius: 24,
        tabActiveBorder: Border.all(color: Colors.white),
        tabs: const [
          GButton(icon: Icons.home,
          text: 'Tienda',
          ),
          GButton(icon: Icons.shopping_bag_outlined,
          text: 'Pedido',
          ),
        ],
      ),
    );
  }
}