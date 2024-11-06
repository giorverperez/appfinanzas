import 'package:flutter/material.dart';

void main() {
  runApp(FinanzasApp());
}

class FinanzasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthScreen(),
    );
  }
}

class AuthScreen extends StatefulWidget {
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
            // Accion para regresar
          },
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildLoginForm(),
          _buildRegisterForm(),
        ],
      ),
    );
  }

  Widget _buildLoginForm() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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

  Widget _buildRegisterForm() {
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
