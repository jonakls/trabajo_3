import 'package:flutter/material.dart';
import '../core/color.dart';

import '../core/routes.dart';
import '../core/string.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          // Logo
          Image.asset(
            'assets/icons/app_logo.png', // Reemplaza con la ruta correcta de tu logo
            width: 200,
            height: 200,
            fit: BoxFit.contain,
          ),

          const SizedBox(height: 20),

          // Nombre de la App
          Text(
            AppString.nameApp,
            style: TextStyle(
              color: AppColor.green,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 40),

          // Descripción
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              AppString.descriptionApp,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black87, fontSize: 24),
            ),
          ),

          const SizedBox(height: 30),

          // Botón "Comienza"
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(Routes.loginPath);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.white,
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                side: BorderSide(color: AppColor.blue, width: 2),
              ),
            ),
            child: const Text(
              'COMIENZA',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),

          const SizedBox(height: 30),

          // Botón "Regístrate"
          TextButton(
            onPressed: () {
              // TODO: Implementar lógica de registro
            },
            child: Text(
              'Regístrate',
              style: TextStyle(
                color: AppColor.blue,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const Spacer(), // Espaciado inferior
        ],
      ),
    );
  }
}
