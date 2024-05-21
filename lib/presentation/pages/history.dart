import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mandaohe/presentation/pages/home.dart';
import 'package:mandaohe/presentation/pages/profil.dart';
import 'package:mandaohe/presentation/widget/theme.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History', style: semibolddeepblueextStyle.copyWith(fontSize: 15)),
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: const Icon(Icons.notifications_none_outlined, color: Colors.amber,),
          )
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: deepblueColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              activeColor: Colors.white,
              iconSize: 24,
              backgroundColor: deepblueColor,
              color: Colors.grey,
              tabBackgroundColor: Colors.amber[700]!,
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              textStyle: semiboldwhitetext,
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.history_rounded,
                  text: 'History',
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profil',
                ),
              ],
              selectedIndex: selectedIndex,
              onTabChange: (int index) {
                setState(() {
                  selectedIndex = index;
                });
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
              },
            ),
          ),
        ),
      ),
    );
  }
}