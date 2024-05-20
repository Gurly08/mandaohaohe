import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mandaohe/presentation/pages/history.dart';
import 'package:mandaohe/presentation/pages/home.dart';
import 'package:mandaohe/presentation/pages/profil.dart';
import 'package:mandaohe/presentation/widget/theme.dart';

class NavBottom extends StatelessWidget {
  const NavBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
          child: GNav(
              backgroundColor: deepblueColor,
              color: Colors.grey,
              activeColor: Colors.amber[300],
              tabBackgroundColor: Colors.purple.shade50,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.chat,
                  text: 'History',
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profil',
                ),
              ],
              onTabChange: (int index) {
                switch (index) {
                  case 0:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Home(),
                      ),
                    );
                    break;

                  case 1:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const History(),
                      ),
                    );
                    break;

                  case 2:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Profil(),
                      ),
                    );
                    break;
                }
              }),
        ),
      ),
    );
  }
}