import 'package:flutter/material.dart';
import 'conquistas_page.dart';
import 'impacto_page.dart';
import 'home_page.dart';

class PlanejarPage extends StatelessWidget {
  const PlanejarPage({super.key});

  @override
  Widget build(BuildContext context) {
    const green = Color(0xFF0FBA7A);

    return Scaffold(
      backgroundColor: const Color(0xFFF8FAF9),

      // ==========================================
      // CONTEÚDO
      // ==========================================

      body: SafeArea(
        child: Column(
          children: [

            // ======================================
            // PARTE SUPERIOR
            // ======================================

            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(
                  18,
                  18,
                  18,
                  10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    // TÍTULO
                    const Text(
                      'Planejar deslocamento',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF172033),
                      ),
                    ),

                    const SizedBox(height: 14),

                    // ==================================
                    // ORIGEM
                    // ==================================

                    Container(
                      height: 34,
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(9),
                        border: Border.all(
                          color: const Color(0xFFE1E7EC),
                        ),
                      ),
                      child: const Row(
                        children: [

                          Text(
                            'De:',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF64748B),
                            ),
                          ),

                          SizedBox(width: 6),

                          Icon(
                            Icons.location_on,
                            color: Colors.redAccent,
                            size: 13,
                          ),

                          SizedBox(width: 3),

                          Text(
                            'Minha localização',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF263238),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 8),

                    // ==================================
                    // DESTINO
                    // ==================================

                    Container(
                      height: 34,
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(9),
                        border: Border.all(
                          color: green,
                          width: 1.2,
                        ),
                      ),
                      child: const Row(
                        children: [

                          Text(
                            'Para:',
                            style: TextStyle(
                              fontSize: 10,
                              color: green,
                            ),
                          ),

                          SizedBox(width: 6),

                          Icon(
                            Icons.search,
                            color: Color(0xFF475569),
                            size: 13,
                          ),

                          SizedBox(width: 3),

                          Text(
                            'Faculdade',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF263238),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 14),

                    // ==================================
                    // OPÇÃO BICICLETA
                    // ==================================

                    Container(
                      height: 49,
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(11),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.04),
                            blurRadius: 8,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [

                          // ÍCONE
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: const Color(0xFFEAF8F3),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Icon(
                              Icons.directions_bike,
                              color: green,
                              size: 18,
                            ),
                          ),

                          const SizedBox(width: 9),

                          // INFORMAÇÕES
                          const Expanded(
                            child: Column(
                              mainAxisAlignment:
                                  MainAxisAlignment.center,
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [

                                Text(
                                  'Bicicleta',
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF263238),
                                  ),
                                ),

                                SizedBox(height: 2),

                                Text(
                                  '🌱 0,8 kg CO₂ evitado',
                                  style: TextStyle(
                                    fontSize: 9,
                                    color: Color(0xFF0F9D67),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // TEMPO + PONTOS
                          Column(
                            mainAxisAlignment:
                                MainAxisAlignment.center,
                            crossAxisAlignment:
                                CrossAxisAlignment.end,
                            children: [

                              const Text(
                                '18 min',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF263238),
                                ),
                              ),

                              const SizedBox(height: 2),

                              Text(
                                '⭐ +30 pontos',
                                style: TextStyle(
                                  fontSize: 9,
                                  color: Colors.orange.shade600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 12),

                    // ==================================
                    // BOTÃO
                    // ==================================

                    SizedBox(
                      width: double.infinity,
                      height: 38,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ImpactoPage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: green,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11),
                          ),
                        ),
                        child: const Text(
                          'Escolher esta opção',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 14),

                    // ==================================
                    // MAPA
                    // ==================================

                    Container(
                      height: 150,
                      width: double.infinity,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Stack(
                        children: [

                          // MAPA
                          CustomPaint(
                            size: const Size(
                              double.infinity,
                              150,
                            ),
                            painter: MapPainter(),
                          ),

                          // =================================
                          // ROTA VERDE
                          // =================================

                          CustomPaint(
                            size: const Size(
                              double.infinity,
                              150,
                            ),
                            painter: RoutePainter(),
                          ),

                          // =================================
                          // MARCADOR 1
                          // =================================

                          const Positioned(
                            left: 43,
                            top: 37,
                            child: MapMarker(),
                          ),

                          // =================================
                          // MARCADOR 2
                          // =================================

                          const Positioned(
                            right: 42,
                            top: 78,
                            child: MapMarker(),
                          ),

                          // =================================
                          // DISTÂNCIA / TEMPO
                          // =================================

                          Positioned(
                            right: 10,
                            top: 10,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black
                                        .withValues(alpha: 0.08),
                                    blurRadius: 6,
                                  ),
                                ],
                              ),
                              child: const Text(
                                '1.2 km • 6 min',
                                style: TextStyle(
                                  fontSize: 9,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF263238),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // ==========================================
            // BOTTOM NAVIGATION
            // ==========================================

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
                currentIndex: 1,
                onTap: (index) {
                  if (index == 1) return;
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
                unselectedItemColor:
                    const Color(0xFF8FA0B5),
                selectedFontSize: 9,
                unselectedFontSize: 9,

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
                    icon: Icon(
                      Icons.workspace_premium_outlined,
                    ),
                    activeIcon: Icon(
                      Icons.workspace_premium,
                    ),
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
// MARCADOR
// ======================================================

class MapMarker extends StatelessWidget {
  const MapMarker({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 22,
      height: 22,
      decoration: const BoxDecoration(
        color: Color(0xFF0FBA7A),
        shape: BoxShape.circle,
      ),
      child: const Icon(
        Icons.directions_bike,
        color: Colors.white,
        size: 12,
      ),
    );
  }
}

// ======================================================
// MAPA
// ======================================================

class MapPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    // FUNDO
    final background = Paint()
      ..color = const Color(0xFFF1F4F1);

    canvas.drawRect(
      Rect.fromLTWH(
        0,
        0,
        size.width,
        size.height,
      ),
      background,
    );

    // LINHAS DAS RUAS
    final roads = Paint()
      ..color = const Color(0xFFDCE4DD)
      ..strokeWidth = 1;

    for (double x = 0; x < size.width; x += 22) {
      canvas.drawLine(
        Offset(x, 0),
        Offset(x, size.height),
        roads,
      );
    }

    for (double y = 0; y < size.height; y += 20) {
      canvas.drawLine(
        Offset(0, y),
        Offset(size.width, y),
        roads,
      );
    }

    // ÁREAS VERDES
    final greenArea = Paint()
      ..color = const Color(0xFFD1E7CA);

    canvas.drawOval(
      Rect.fromLTWH(
        8,
        20,
        60,
        40,
      ),
      greenArea,
    );

    canvas.drawOval(
      Rect.fromLTWH(
        size.width - 80,
        20,
        70,
        50,
      ),
      greenArea,
    );

    canvas.drawOval(
      Rect.fromLTWH(
        size.width - 90,
        90,
        80,
        50,
      ),
      greenArea,
    );

    // RIO
    final water = Paint()
      ..color = const Color(0xFFBFE0ED);

    final path = Path();

    path.moveTo(0, 100);
    path.quadraticBezierTo(
      size.width * .3,
      70,
      size.width * .55,
      105,
    );
    path.quadraticBezierTo(
      size.width * .8,
      135,
      size.width,
      100,
    );

    path.lineTo(size.width, 115);
    path.quadraticBezierTo(
      size.width * .8,
      150,
      size.width * .5,
      118,
    );
    path.quadraticBezierTo(
      size.width * .25,
      88,
      0,
      115,
    );

    path.close();

    canvas.drawPath(path, water);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

// ======================================================
// ROTA
// ======================================================

class RoutePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    final route = Paint()
      ..color = const Color(0xFF0FBA7A)
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final path = Path();

    path.moveTo(
      55,
      48,
    );

    path.cubicTo(
      95,
      10,
      105,
      135,
      150,
      135,
    );

    path.cubicTo(
      190,
      135,
      180,
      45,
      245,
      88,
    );

    canvas.drawPath(
      path,
      route,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}