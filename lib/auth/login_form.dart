import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            'https://www.google.com/imgres?q=uleam%20logo&imgurl=https%3A%2F%2Fwww.uleam.edu.ec%2Fwp-content%2Fuploads%2F2012%2F09%2FLOGO-ULEAM-HORIZONTAL.png&imgrefurl=https%3A%2F%2Fwww.uleam.edu.ec%2Flogos-uleam%2F&docid=j4MbHXESh-FjbM&tbnid=WLCZJxw7QEGc7M&vet=12ahUKEwjKqevl7MiJAxW6SjABHSeWNsMQM3oECBcQAA..i&w=1834&h=1577&hcb=2&ved=2ahUKEwjKqevl7MiJAxW6SjABHSeWNsMQM3oECBcQAA', // Cambia esta URL a la del logo que desees usar
            height: 100,
          ),
          const SizedBox(height: 20),
          const Text(
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
