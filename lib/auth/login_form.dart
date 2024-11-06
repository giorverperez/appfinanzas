import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            'https://your-image-url.com/logo.png', // Cambia esta URL a la del logo que desees usar
            height: 100,
          ),
          const SizedBox(height: 20),
          Text(
            'Bienvenido a Finanzas Uleam',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Email'),
          ),
          const SizedBox(height: 10),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Contraseña'),
            obscureText: true,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            child: const Text('INICIAR SESIÓN'),
          ),
          TextButton(
            onPressed: () {
              // Acción para recuperar contraseña
            },
            child: const Text('Recuperar contraseña'),
          ),
        ],
      ),
    );
  }
}
