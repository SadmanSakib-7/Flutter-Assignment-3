import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mindful Moments")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 180,
            width: 250,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xFFE2E5BC),
              border: Border.all(width: 2, color: const Color(0xFF6B713F)),
              borderRadius: BorderRadius.circular(12),
              gradient: const LinearGradient(
                colors: [Color(0xFFE2E5BC), Color(0xFFA7B16A)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.spa, size: 40, color: Color(0xFF353A24)),
                SizedBox(height: 10),
                Text(
                  "Pause & Notice",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF353A24),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 150,
            width: 250,
            child: Card(
              color: const Color(0xFFF0E8CE),
              elevation: 6,
              shadowColor: const Color(0xFF858A59),
              margin: const EdgeInsets.all(10),
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.eco, size: 35, color: Color(0xFF6B713F)),
                    SizedBox(height: 8),
                    Text(
                      "Beauty Lives in Details",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Color(0xFF353A24)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
