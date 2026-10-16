import 'package:flutter/material.dart';
import 'package:sadman/container_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Olive Haven"),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Take a breath. Enjoy the moment."),
                ),
              );
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Color(0xFF6B713F)),
              accountName: Text("Olive Haven"),
              accountEmail: Text("A slower, simpler everyday"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Color(0xFFF6F5E9),
                child: Icon(Icons.spa, color: Color(0xFF6B713F), size: 35),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.local_florist),
              title: const Text("Mindful Moments"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContainerPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text("My Journal"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF6B713F),
        foregroundColor: Colors.white,
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("One small step is enough for today."),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Make Room for Calm",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xFF6B713F),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Less rush, more meaning in everyday moments.",
              style: TextStyle(fontSize: 16, color: Color(0xFF353A24)),
            ),
            const SizedBox(height: 25),
            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: const Color(0xFF6B713F), width: 2),
                gradient: const LinearGradient(
                  colors: [Color(0xFFE2E5BC), Color(0xFFA7B16A)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.spa, size: 45, color: Color(0xFF353A24)),
                  SizedBox(height: 10),
                  Text(
                    "Welcome to Olive Haven",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF353A24),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Pause • Notice • Appreciate",
                    style: TextStyle(fontSize: 16, color: Color(0xFF353A24)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            const Text(
              "Little Things to Explore",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF6B713F),
              ),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: Card(
                    color: const Color(0xFFE5E9D0),
                    elevation: 4,
                    child: const Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Icon(
                            Icons.edit_note,
                            size: 35,
                            color: Color(0xFF6B713F),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Daily Journal",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF353A24),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    color: const Color(0xFFF0E8CE),
                    elevation: 4,
                    child: const Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Icon(
                            Icons.lightbulb_outline,
                            size: 35,
                            color: Color(0xFF6B713F),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Mindful Ideas",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF353A24),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            const Text(
              "What Feels Right Today?",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF6B713F),
              ),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.self_improvement),
                  label: const Text("Reflect"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF6B713F),
                    foregroundColor: Colors.white,
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.event_note),
                  label: const Text("Organize"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF6B713F),
                    foregroundColor: Colors.white,
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.directions_walk),
                  label: const Text("Wander"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF6B713F),
                    foregroundColor: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Card(
              color: const Color(0xFFF0E8CE),
              elevation: 3,
              child: const Padding(
                padding: EdgeInsets.all(18),
                child: Row(
                  children: [
                    Icon(Icons.spa, size: 40, color: Color(0xFF6B713F)),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "A Note for Today",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF353A24),
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "You don't have to do everything today. "
                            "Start with one small thing.",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFF353A24),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                "Slow Down. Look Around.",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF6B713F),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
