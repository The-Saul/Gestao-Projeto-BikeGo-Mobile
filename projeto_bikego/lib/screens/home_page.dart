import 'package:flutter/material.dart';
import 'conquistas_page.dart';
import 'impacto_page.dart';
import 'planejar_page.dart';

void main() {
  runApp(const EcoMoveApp());
}

class EcoMoveApp extends StatelessWidget {
  const EcoMoveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EcoMove',
      theme: ThemeData(
        fontFamily: 'Arial',
        scaffoldBackgroundColor: const Color(0xFFF8FAF9),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0FBA7A),
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  final Color green = const Color(0xFF0FBA7A);
  final Color blue = const Color(0xFF159BD7);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // CONTEÚDO PRINCIPAL
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    // -------------------------
                    // SAUDAÇÃO
                    // -------------------------
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20, 16, 20, 12),
                      child: Text(
                        'Olá! 👋',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF334155),
                        ),
                      ),
                    ),

                    // -------------------------
                    // MAPA
                    // -------------------------
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Container(
                        height: 245,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF2F5F2),
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Stack(
                          children: [

                            // Desenho do mapa
                            ClipRRect(
                              borderRadius: BorderRadius.circular(22),
                              child: CustomPaint(
                                painter: MapPainter(),
                                size: const Size(double.infinity, 245),
                              ),
                            ),

                            // BALÃO DO MAPA
                            Positioned(
                              top: 10,
                              right: 12,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 14,
                                  vertical: 9,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withValues(alpha: 0.08),
                                      blurRadius: 10,
                                      offset: const Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: green,
                                      size: 19,
                                    ),
                                    const SizedBox(width: 6),
                                    const Text(
                                      '3 locações perto de você',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF263238),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            // MARCADOR AZUL
                            const Positioned(
                              left: 142,
                              top: 86,
                              child: MapMarker(
                                color: Color(0xFF159BD7),
                                icon: Icons.location_on,
                              ),
                            ),

                            // BICICLETAS
                            const Positioned(
                              left: 76,
                              top: 50,
                              child: MapMarker(
                                color: Color(0xFF0FBA7A),
                                icon: Icons.directions_bike,
                              ),
                            ),

                            const Positioned(
                              left: 113,
                              top: 153,
                              child: MapMarker(
                                color: Color(0xFF0FBA7A),
                                icon: Icons.directions_bike,
                              ),
                            ),

                            const Positioned(
                              left: 187,
                              top: 78,
                              child: MapMarker(
                                color: Color(0xFF0FBA7A),
                                icon: Icons.directions_bike,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // -------------------------
                    // IMPACTO
                    // -------------------------
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 18, 20, 12),
                      child: Row(
                        children: [
                          const Text(
                            '🌱 ',
                            style: TextStyle(fontSize: 15),
                          ),
                          const Expanded(
                            child: Text(
                              'Seu impacto acumulado',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF263238),
                              ),
                            ),
                          ),
                          Text(
                            'Ver tudo',
                            style: TextStyle(
                              color: green,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // -------------------------
                    // CARDS DE IMPACTO
                    // -------------------------
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Row(
                        children: [
                          Expanded(
                            child: ImpactCard(
                              icon: Icons.cloud_outlined,
                              iconColor: green,
                              iconBackground: const Color(0xFFE8F8F1),
                              value: '12,4 kg',
                              label: 'CO₂ evitado',
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: ImpactCard(
                              icon: Icons.location_on_outlined,
                              iconColor: blue,
                              iconBackground: const Color(0xFFEAF6FC),
                              value: '8',
                              label: 'viagens\nsustentáveis',
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: ImpactCard(
                              icon: Icons.workspace_premium_outlined,
                              iconColor: const Color(0xFFE6A928),
                              iconBackground: const Color(0xFFFFF7E7),
                              value: '240',
                              label: 'EcoPoints\nganhas',
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 16),

                    // -------------------------
                    // BOTÃO
                    // -------------------------
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PlanejarPage(),
                              ),
                            );
                          },
                          icon: const Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 20,
                          ),
                          label: const Text(
                            'Registrar deslocamento',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: green,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 50),
                  ],
                ),
              ),
            ),

            // -------------------------
            // BOTTOM NAVIGATION
            // -------------------------
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(
                    color: Colors.grey.shade200,
                  ),
                ),
              ),
              child: BottomNavigationBar(
                currentIndex: selectedIndex,
                onTap: (index) {
                  if (index == selectedIndex) return;
                  final pages = [
                    const HomePage(),
                    const PlanejarPage(),
                    const ImpactoPage(),
                    const ConquistasPage(),
                  ];
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => pages[index]),
                  );
                },
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.white,
                elevation: 0,
                selectedItemColor: green,
                unselectedItemColor: const Color(0xFF8FA0B5),
                selectedFontSize: 10,
                unselectedFontSize: 10,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined),
                    activeIcon: Icon(Icons.home),
                    label: 'Início',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.explore_outlined),
                    activeIcon: Icon(Icons.explore),
                    label: 'Planejar',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.eco_outlined),
                    activeIcon: Icon(Icons.eco),
                    label: 'Impacto',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.workspace_premium_outlined),
                    activeIcon: Icon(Icons.workspace_premium),
                    label: 'Conquistas',
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

// ======================================================
// CARD DE IMPACTO
// ======================================================

class ImpactCard extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color iconBackground;
  final String value;
  final String label;

  const ImpactCard({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.iconBackground,
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: iconBackground,
              borderRadius: BorderRadius.circular(9),
            ),
            child: Icon(
              icon,
              size: 17,
              color: iconColor,
            ),
          ),

          const SizedBox(height: 6),

          Text(
            value,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF172033),
            ),
          ),

          Text(
            label,
            style: const TextStyle(
              fontSize: 10,
              color: Color(0xFF64748B),
              height: 1.2,
            ),
          ),
        ],
      ),
    );
  }
}

// ======================================================
// MARCADOR DO MAPA
// ======================================================

class MapMarker extends StatelessWidget {
  final Color color;
  final IconData icon;

  const MapMarker({
    super.key,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: color.withValues(alpha: 0.25),
            blurRadius: 8,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Icon(
        icon,
        color: Colors.white,
        size: 18,
      ),
    );
  }
}

// ======================================================
// MAPA FAKE
// ======================================================

class MapPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final linePaint = Paint()
      ..color = const Color(0xFFDDE5DF)
      ..strokeWidth = 1;

    final greenPaint = Paint()
      ..color = const Color(0xFFD3E9CB);

    final bluePaint = Paint()
      ..color = const Color(0xFFBFE1F0);

    // Linhas verticais
    for (double x = 20; x < size.width; x += 25) {
      canvas.drawLine(
        Offset(x, 0),
        Offset(x - 30, size.height),
        linePaint,
      );
    }

    // Linhas horizontais
    for (double y = 15; y < size.height; y += 25) {
      canvas.drawLine(
        Offset(0, y),
        Offset(size.width, y),
        linePaint,
      );
    }

    // Áreas verdes
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(28, 115, 75, 48),
        const Radius.circular(7),
      ),
      greenPaint,
    );

    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(218, 105, 58, 80),
        const Radius.circular(8),
      ),
      greenPaint,
    );

    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(102, 30, 25, 28),
        const Radius.circular(5),
      ),
      greenPaint,
    );

    // Lago
    canvas.drawOval(
      Rect.fromLTWH(50, 165, 62, 40),
      bluePaint,
    );

    canvas.drawOval(
      Rect.fromLTWH(245, 35, 30, 100),
      bluePaint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}