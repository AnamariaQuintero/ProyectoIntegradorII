import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trabajo/config/router/router_model.dart';
import 'package:trabajo/presentation/home/home_screen.dart';
import 'package:trabajo/presentation/home/product_screen.dart';

final routerConfig = <RouterModel>[
  RouterModel(
    name: HomeScreen.name, 
    description: 'Este es el home', 
    icon: Icons.home,
    isVisible: true,
    patch: "/", 
    screen: (context, state) => const HomeScreen(), 
    title: 'Home' 
  ),
  RouterModel(
    name: ProductoScreen.name, 
    description: 'Este es el producto', 
    icon: Icons.production_quantity_limits,
    isVisible: true,
    patch: "/producto", 
    screen: (context, state) => const ProductoScreen(), 
    title: 'Producto' 
  ),  
];

final router = GoRouter(
  
  initialLocation: '/',

  routes: <GoRoute> [
    ...routerConfig.map( (e) => GoRoute(path: e.patch, name: e.name, builder:e.screen),
    ),
  ]
);