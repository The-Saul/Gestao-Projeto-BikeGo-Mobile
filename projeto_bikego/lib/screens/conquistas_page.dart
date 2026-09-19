import 'package:flutter/material.dart';
import 'home_page.dart';
import 'impacto_page.dart';
import 'planejar_page.dart';

class ConquistasPage extends StatelessWidget {
  const ConquistasPage({super.key});

  static const green = Color(0xFF0FBA7A);
  static const ink = Color(0xFF172033);
  static const muted = Color(0xFF64748B);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAF9),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(18, 22, 18, 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            width: 76,
                            height: 76,
                            padding: const EdgeInsets.all(3),
                            decoration: const BoxDecoration(
                              color: Color(0xFFF1C878),
                              shape: BoxShape.circle,
                            ),
                            child: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                'https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=200',
                              ),
                            ),
                          ),
                          Positioned(
                            right: -2,
                            bottom: -1,
                            child: Container(
                              width: 24,
                              height: 24,
                              decoration: const BoxDecoration(
                                color: green,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.edit,
                                color: Colors.white,
                                size: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 7),
                    const Center(
                      child: Text(
                        'Toque para alterar sua foto de perfil',
                        style: TextStyle(fontSize: 9, color: muted),
                      ),
                    ),
                    const SizedBox(height: 27),
                    const Text(
                      'Seu impacto hoje',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: ink,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Row(
                      children: [
                        Expanded(
                          child: ImpactCard(
                            icon: Icons.eco_outlined,
                            iconColor: green,
                            iconBackground: Color(0xFFE8FAF3),
                            value: '1,2 kg',
                            label: 'de CO₂\nevita do',
                          ),
                        ),
                        SizedBox(width: 7),
                        Expanded(
                          child: ImpactCard(
                            icon: Icons.directions_car_outlined,
                            iconColor: Color(0xFF159BD7),
                            iconBackground: Color(0xFFEAF6FC),
                            value: '1',
                            label: 'viagem\nsubstituída',
                          ),
                        ),
                        SizedBox(width: 7),
                        Expanded(
                          child: ImpactCard(
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
                    const SizedBox(height: 9),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: const LinearProgressIndicator(
                        value: 0.8,
                        minHeight: 7,
                        backgroundColor: Color(0xFFDDEFE8),
                        valueColor: AlwaysStoppedAnimation<Color>(green),
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
                            width: 30,
                            height: 30,
                            decoration: const BoxDecoration(
                              color: Color(0xFFFFF7E7),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.workspace_premium_outlined,
                              color: Color(0xFFF2A51A),
                              size: 16,
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
                                    fontSize: 10,
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
                    const SizedBox(height: 13),
                    const Text(
                      'Proporção de Pontos e Descontos:',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: ink,
                      ),
                    ),
                    const SizedBox(height: 7),
                    const Text(
                      '40,00 = 0,20 R\$',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: ink,
                      ),
                    ),
                    const SizedBox(height: 25),
                    const Text(
                      'Saldo de Pontos:',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: ink,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'R\$ ********',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: ink,
                      ),
                    ),
                    const SizedBox(height: 9),
                    const Icon(
                      Icons.money_off_csred_outlined,
                      size: 18,
                      color: green,
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
                currentIndex: 3,
                onTap: (index) {
                  if (index == 3) return;
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
              color: ConquistasPage.ink,
            ),
          ),
          Text(
            label,
            style: const TextStyle(
              fontSize: 8,
              height: 1.15,
              color: ConquistasPage.muted,
            ),
          ),
        ],
      ),
    );
  }
}

class AchievementTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final bool completed;

  const AchievementTile({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    required this.completed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
        border: Border.all(
          color: completed
              ? const Color(0xFFBDEDDD)
              : const Color(0xFFE7ECF0),
        ),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: completed ? ConquistasPage.green : ConquistasPage.muted,
            size: 22,
          ),
          const SizedBox(width: 11),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: ConquistasPage.ink,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  description,
                  style: const TextStyle(fontSize: 9, color: ConquistasPage.muted),
                ),
              ],
            ),
          ),
          Icon(
            completed ? Icons.check_circle : Icons.lock_outline,
            color: completed ? ConquistasPage.green : const Color(0xFFB6C0CA),
            size: 18,
          ),
        ],
      ),
    );
  }
}
