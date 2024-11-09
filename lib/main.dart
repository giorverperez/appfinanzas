import 'package:flutter/material.dart';
import 'home/home_screen.dart';
import 'agregar_transaccion/agregar_transaccion.dart';

void main() {
  runApp(const FinanzasApp());
}

class FinanzasApp extends StatelessWidget {
  const FinanzasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AuthScreen(), // Pantalla de autenticación como la principal
      routes: {
        '/home': (context) => const HomeScreen(),
        '/agregar_transaccion': (context) => AgregarTransaccion(),
      },
    );
  }
}

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Finanzapp',
          style: TextStyle(color: Colors.black),
        ),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.blue,
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.grey,
          tabs: const [
            Tab(text: 'INICIO DE SESIÓN'),
            Tab(text: 'REGISTRARSE'),
          ],
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Acción para regresar
          },
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildLoginForm(context),
          _buildRegisterForm(context),
        ],
      ),
    );
  }

  Widget _buildLoginForm(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/home'); // Navega a la pantalla principal después del inicio de sesión
            },
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

  Widget _buildRegisterForm(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
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
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/home'); // Navega a la pantalla principal después de registrarse
            },
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
