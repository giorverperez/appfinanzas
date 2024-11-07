import 'package:flutter/material.dart';

class ResumenFinanzas extends StatelessWidget {
  const ResumenFinanzas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Resumen de Finanzas"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Resumen de tus Finanzas',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Card(
              elevation: 4,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Saldo Total:',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '\$10,000',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Transacciones Recientes',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  const ListTile(
                    title: Text("Pago de Alquiler"),
                    subtitle: Text("02 Nov 2024"),
                    trailing: Text("-\$500"),
                  ),
                  const ListTile(
                    title: Text("Salario"),
                    subtitle: Text("01 Nov 2024"),
                    trailing: Text("+\$3000"),
                  ),
                  const ListTile(
                    title: Text("Compra de Supermercado"),
                    subtitle: Text("29 Oct 2024"),
                    trailing: Text("-\$150"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
