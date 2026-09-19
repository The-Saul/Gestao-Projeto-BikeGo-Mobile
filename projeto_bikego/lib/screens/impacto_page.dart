import 'package:flutter/material.dart';
import 'conquistas_page.dart';
import 'home_page.dart';
import 'planejar_page.dart';

class ImpactoPage extends StatelessWidget {
  const ImpactoPage({super.key});

  static const green = Color(0xFF00B77A);
  static const ink = Color(0xFF172033);
  static const muted = Color(0xFF64748B);
  static const background = Color(0xFFF8FAF9);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(18, 14, 18, 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        width: 54,
                        height: 54,
                        decoration: const BoxDecoration(
                          color: Color(0xFFE9FBF4),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.check,
                          color: green,
                          size: 29,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Center(
                      child: Text(
                        'Deslocamento concluído!',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: ink,
                        ),
                      ),
                    ),
                    const SizedBox(height: 3),
                    const Center(
                      child: Text.rich(
                        TextSpan(
                          text: 'Você caminhou ',
                          style: TextStyle(fontSize: 11, color: muted),
                          children: [
                            TextSpan(
                              text: '2,4 km.',
                              style: TextStyle(
                                color: green,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 13),
                    const Text(
                      'Seu impacto hoje',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: ink,
                      ),
                    ),
                    const SizedBox(height: 7),
                    const Row(
                      children: [
                        Expanded(
                          child: ImpactSummaryCard(
                            icon: Icons.eco_outlined,
                            iconColor: green,
                            iconBackground: Color(0xFFE8FAF3),
                            value: '1,2 kg',
                            label: 'de CO₂\nevita do',
                          ),
                        ),
                        SizedBox(width: 7),
                        Expanded(
                          child: ImpactSummaryCard(
                            icon: Icons.directions_car_outlined,
                            iconColor: Color(0xFF159BD7),
                            iconBackground: Color(0xFFEAF6FC),
                            value: '1',
                            label: 'viagem\nsubstituída',
                          ),
                        ),
                        SizedBox(width: 7),
                        Expanded(
                          child: ImpactSummaryCard(
                            icon: Icons.star_border,
                            iconColor: Color(0xFFF2A51A),
                            iconBackground: Color(0xFFFFF6E5),
                            value: '+40',
                            label: 'pontos\nganhos',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 13),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text.rich(
                          TextSpan(
                            text: '🏅 ',
                            children: [
                              TextSpan(
                                text: 'Progresso',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: ink,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          '240 / 300 pontos',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: green,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 7,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xFFDDEFE8),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: FractionallySizedBox(
                        alignment: Alignment.centerLeft,
                        widthFactor: 0.8,
                        child: Container(
                          decoration: BoxDecoration(
                            color: green,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.04),
                            blurRadius: 10,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 31,
                            height: 31,
                            decoration: const BoxDecoration(
                              color: Color(0xFFFFF7E7),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.workspace_premium_outlined,
                              color: Color(0xFFF2A51A),
                              size: 17,
                            ),
                          ),
                          const SizedBox(width: 9),
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Próxima recompensa',
                                  style: TextStyle(fontSize: 9, color: muted),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  'Explorador Sustentável',
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    color: ink,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Text(
                            '60 pts restantes',
                            style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.bold,
                              color: muted,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      width: double.infinity,
                      height: 35,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          foregroundColor: const Color(0xFF526173),
                          side: const BorderSide(color: Color(0xFFDCE4EA)),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          'Ver meu histórico',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(color: Colors.grey.shade200),
                ),
              ),
              child: BottomNavigationBar(
                currentIndex: 2,
                onTap: (index) {
                  if (index == 2) return;
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

class ImpactSummaryCard extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color iconBackground;
  final String value;
  final String label;

  const ImpactSummaryCard({
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
      height: 91,
      padding: const EdgeInsets.all(9),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 9,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              color: iconBackground,
              borderRadius: BorderRadius.circular(7),
            ),
            child: Icon(icon, color: iconColor, size: 14),
          ),
          const SizedBox(height: 5),
          Text(
            value,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: ImpactoPage.ink,
            ),
          ),
          Text(
            label,
            style: const TextStyle(
              fontSize: 8,
              height: 1.15,
              color: ImpactoPage.muted,
            ),
          ),
        ],
      ),
    );
  }
}
