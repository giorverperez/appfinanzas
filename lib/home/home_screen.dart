import 'package:flutter/material.dart';
import 'resumen_finanzas.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inicio - Finanzapp"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          const Text(
            'Bienvenido a tu Resumen Financiero',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          const Text(
            'Gestiona tus finanzas de manera fácil y rápida',
            style: TextStyle(fontSize: 16, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Image.network(
                    'https://static.vecteezy.com/system/resources/thumbnails/007/447/957/small/businessman-working-with-laptop-and-smartphone-virtual-dashboard-analyzing-finance-sales-data-and-economic-growth-graph-chart-photo.jpg',
                    width: 200,
                    height: 200,
                  ),
                  const SizedBox(width: 20),
                  Image.network(
                    'https://static.vecteezy.com/system/resources/thumbnails/007/447/957/small/businessman-working-with-laptop-and-smartphone-virtual-dashboard-analyzing-finance-sales-data-and-economic-growth-graph-chart-photo.jpg',
                    width: 200,
                    height: 200,
                  ),
                  const SizedBox(width: 20),
                  Image.network(
                    'https://static.vecteezy.com/system/resources/thumbnails/007/447/957/small/businessman-working-with-laptop-and-smartphone-virtual-dashboard-analyzing-finance-sales-data-and-economic-growth-graph-chart-photo.jpg',
                    width: 200,
                    height: 200,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ResumenFinanzas()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              icon: const Icon(Icons.show_chart),
              label: const Text('Ver monto de Finanzas'),
            ),
          ),
        ],
      ),
    );
  }
}