import 'package:cafeteria/models/cafe.dart';
import 'package:flutter/material.dart';


class CafeTile extends StatelessWidget {
  final Cafe cafe;
  void Function()? onPressed;
  final Widget icon;
  CafeTile({
    super.key, 
    required this.cafe, 
    required this.onPressed,
    required this.icon,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200], borderRadius: BorderRadius.circular(12),),
      margin: const EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      child: ListTile(
        title: Text(cafe.nombre),
        subtitle: Text(cafe.precio),
        leading: Image.asset(cafe.imagePath),
        trailing: IconButton(
          icon: icon,
          onPressed: onPressed,
        ),
      ),
    );
  }
}