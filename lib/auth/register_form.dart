import 'package:flutter/material.dart';

class RegisterForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Bienvenido a Finanzapp',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Nombre completo'),
          ),
          const SizedBox(height: 10),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Email'),
          ),
          const SizedBox(height: 10),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Contraseña'),
            obscureText: true,
          ),
          const SizedBox(height: 10),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Teléfono'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            child: const Text('REGISTRARSE'),
          ),
        ],
      ),
    );
  }
}
