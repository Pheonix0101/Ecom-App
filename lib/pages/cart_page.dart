import 'package:flutter/material.dart';
import 'package:megaproject/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.canvasColor,
        centerTitle: true,
        
        title: "My Cart".text.make(),
      ),
      backgroundColor: context.canvasColor,
    );
  }
}
