import 'package:cafeteria/components/cafe_tile.dart';
import 'package:cafeteria/models/cafe.dart';
import 'package:cafeteria/models/tienda_cafe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PedidoPage extends StatefulWidget {
  const PedidoPage({super.key});

  @override
  State<PedidoPage> createState() => _PedidoPageState();
}

class _PedidoPageState extends State<PedidoPage> {

  void removeFromPedido(Cafe cafe){
    Provider.of<TiendaCafe>(context, listen: false).removeArticuloAlPedido(cafe);
  }

  //boton pago
  void pagarAhora(){

  }
  @override
  Widget build(BuildContext context) {
    return Consumer<TiendaCafe>(builder: (context, value, child) => SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            //encabezado
            Text(
              'Tu pedido', 
              style: TextStyle(fontSize: 20),
              ),
            //lista de articulos
            Expanded(child: ListView.builder(
              itemCount: value.usuarioPedido.length,
              itemBuilder: (context, index){
              //get cafe individuales
              Cafe eachCafe = value.usuarioPedido[index];
              //return cafe tile
              return CafeTile(
                cafe: eachCafe, 
                onPressed: () => removeFromPedido(eachCafe), 
                icon: Icon(Icons.delete),);

            }),
            ),

            //boton de pagar
            GestureDetector(
              onTap: pagarAhora,
              child: Container(
                padding: const EdgeInsets.all(25),
                width: double.infinity,
                  decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.circular(12),
                  ),
                child: Center(
                  child: Text("Pagar ahora", 
                  style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ),
    );
  }
}