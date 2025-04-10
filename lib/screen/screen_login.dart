import 'package:flutter/material.dart';

import 'package:trabajo_3/core/color.dart';
import 'package:trabajo_3/core/string.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.gray,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Row(
              children: [
                Image.asset(
                  'assets/icons/app_logo.png',
                  width: 100,
                  height: 100,
                  fit: BoxFit.contain,
                ),
                const SizedBox(width: 30),
                Text(
                  AppString.nameApp,
                  style: TextStyle(
                    color: AppColor.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              AppString.registerDescription,
              textAlign: TextAlign.center,
              style: TextStyle(color: AppColor.white, fontSize: 18),
            ),
            const SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                icon: Image.asset(
                  'assets/icons/user_icon.png',
                  width: 50,
                  height: 50,
                ),
                hintText: 'Usuario',
                hintStyle: TextStyle(color: AppColor.blue, fontSize: 18),
                filled: true,
                fillColor: AppColor.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: AppColor.blue),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: AppColor.blue, width: 2),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                icon: Image.asset(
                  'assets/icons/key_icon.png',
                  width: 50,
                  height: 50,
                ),
                hintText: 'Clave',
                hintStyle: TextStyle(color: AppColor.blue, fontSize: 18),
                filled: true,
                fillColor: AppColor.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: AppColor.blue),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: AppColor.blue, width: 2),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement login logic
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.blue,
                padding: const EdgeInsets.symmetric(
                  horizontal: 100,
                  vertical: 15,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side: BorderSide(color: AppColor.white, width: 2),
                ),
              ),
              child: const Text(
                AppString.loginButtonText,
                style: TextStyle(color: AppColor.white, fontSize: 24),
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                // TODO: Implement password recovery
              },
              child: const Text(
                AppString.recoverPassword,
                style: TextStyle(color: AppColor.green, fontSize: 16),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                // TODO: Implement Google Sign-In
              },
              icon: Image.asset(
                'assets/icons/google_icon.png',
                width: 25,
                height: 25,
              ),
              label: const Text(AppString.googleSignIn),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                side: BorderSide(color: Colors.grey.shade300),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            const SizedBox(height: 20),
            RichText(
              text: TextSpan(
                text: AppString.accountQuestion,
                style: const TextStyle(color: AppColor.white),
                children: [
                  TextSpan(
                    text: AppString.registerTextApp,
                    style: const TextStyle(
                      color: AppColor.green,
                      fontWeight: FontWeight.bold,
                    ),
                    // TODO: Add onTap for registration
                  ),
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
