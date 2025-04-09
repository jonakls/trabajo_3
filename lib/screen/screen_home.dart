import 'package:flutter/material.dart';
import 'package:trabajo_3/core/color.dart';
import 'package:trabajo_3/core/routes.dart';
import 'package:trabajo_3/core/string.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.gray,
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
              color: AppColor.white,
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
              style: TextStyle(color: AppColor.white, fontSize: 20),
            ),
          ),

          const SizedBox(height: 30),

          // Botón "Comienza"
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(Routes.loginPath);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.blue,
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                side: BorderSide(color: AppColor.white, width: 2),
              ),
            ),
            child: const Text(
              AppString.buttonStartApp,
              style: TextStyle(color: AppColor.white, fontSize: 24),
            ),
          ),

          const SizedBox(height: 30),

          // Botón "Regístrate"
          TextButton(
            onPressed: () {
              // TODO: Implementar lógica de registro
            },
            child: Text(
              AppString.registerTextApp,
              style: TextStyle(
                color: AppColor.green,
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
