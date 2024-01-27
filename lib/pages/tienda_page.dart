import 'dart:js_util';

import 'package:cafeteria/components/cafe_tile.dart';
import 'package:cafeteria/models/cafe.dart';
import 'package:cafeteria/models/tienda_cafe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TiendaPage extends StatefulWidget {
  const TiendaPage({super.key});

  @override
  State<TiendaPage> createState() => _TiendaPageState();
}

class _TiendaPageState extends State<TiendaPage> {

  //add cafe al pedido
  void addAlPedido(Cafe cafe){
    Provider.of<TiendaCafe>(context, listen: false).addArticuloAlPedido(cafe);

  //notificacion exitosa
  showDialog(context: context, 
      builder: (context) => AlertDialog(
      title: Text("Agregado exitosamente"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<TiendaCafe>(builder: (context, value, child)=> SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              //mensaje de encabezado
              const Text(
                "¿Como desea su café?", 
                style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 25),

                //lista de cafe para comprar

                  Expanded(child: ListView.builder(
                    itemCount: value.cafeTienda.length,
                    itemBuilder: (context, index){
                    //get cafe individualmente
                    Cafe eachCafe = value.cafeTienda[index];
                    // return tile para este cafe
                    return CafeTile(
                      cafe: eachCafe,
                      icon: Icon(Icons.add),
                      onPressed: () => addAlPedido(eachCafe),
                      );
                  }
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}