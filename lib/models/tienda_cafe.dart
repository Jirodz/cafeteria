import 'package:cafeteria/models/cafe.dart';
import 'package:flutter/material.dart';

class TiendaCafe extends ChangeNotifier {

  //lista de bebidas

  final List<Cafe> _tienda = [
    // cafe negro
      Cafe(nombre: 'Americano', 
    precio: "10", 
    imagePath: "lib/images/black.png",),
    // latte
        Cafe(nombre: 'Latte', 
    precio: "12", 
    imagePath: "lib/images/latte.png",),
    //espresso
        Cafe(nombre: 'Espresso', 
    precio: "10", 
    imagePath: "lib/images/espresso.png",),
    // iced Coffee
        Cafe(nombre: 'Café frío', 
    precio: "15", 
    imagePath: "lib/images/iced_coffee.png",),

  ];

  //usuario pedido

  List<Cafe> _usuarioPedido = [];
    
  //get lista de bebidas

    List<Cafe> get cafeTienda => _tienda;

  //get usuario pedido

    List<Cafe> get usuarioPedido => _usuarioPedido;

  //add articulos al pedido

  void addArticuloAlPedido(Cafe cafe){
    _usuarioPedido.add(cafe);
    notifyListeners();
  }

  //remove articulos al pedido

  void removeArticuloAlPedido(Cafe cafe){
    _usuarioPedido.remove(cafe);
  }
  
}