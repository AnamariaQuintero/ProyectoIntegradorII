import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trabajo/presentation/widget/layout/drawer_widget.dart';

class ProductoScreen extends StatelessWidget {
  static const String name = "producto_screen";
  const ProductoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hola Producto"),),
      drawer: DrawerWidget(),
      body: FilledButton(
        onPressed: (){
          context.go("/");
        }, child: Text('Presione')),
    );
  }
}