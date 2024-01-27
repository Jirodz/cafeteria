import 'package:cafeteria/components/bottom_nav_bar.dart';
import 'package:cafeteria/const.dart';
import 'package:cafeteria/pages/pedido_page.dart';
import 'package:cafeteria/pages/tienda_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //navingateBottombar
  int _selectedIndex = 0;
  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

    //paginas
    final List<Widget> _pages = [
          //tienda
    TiendaPage(),
    //pedido
    PedidoPage(),

    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyBottonNavBar(
        onTabChange: (index)=> navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}