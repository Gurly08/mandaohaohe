import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mandaohe/presentation/pages/history.dart';
import 'package:mandaohe/presentation/pages/profil.dart';
import 'package:mandaohe/presentation/widget/data_kapal_table.dart';
import 'package:mandaohe/presentation/widget/list_service_widget.dart';
import 'package:mandaohe/presentation/widget/theme.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            const CircleAvatar(
              foregroundImage: AssetImage("assets/images/ppaku.jpg"),
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome',
                  style: mediumBlackTextStyle.copyWith(fontSize: 12),
                ),
                Text(
                  'Bagas Djunaedi',
                  style: semiboldBlackTextStyle.copyWith(fontSize: 13),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none_outlined,
              color: Colors.amber,
            ),
          )
        ],
        automaticallyImplyLeading: false, // untuk nonaktifkan arrow back nya
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 12, 12, 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Container(
                  height: 180,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/banner.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 70),
                      child: Text(
                        'Make delivering your cargo easier and more practical',
                        style:
                            boldwhitetext, // pastikan boldWhiteTextStyle sudah didefinisikan
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              Text(
                'Layanan',
                style: regularBlackTextStyle.copyWith(fontSize: 15),
              ),
              const Divider(),
              const SizedBox(height: 14),
              const ListServiceWidget(),
              const SizedBox(height: 18),
              Text('Data Kapal',
                  style: regularBlackTextStyle.copyWith(fontSize: 15)),
              const Divider(),
              const SizedBox(height: 14),
              const DataKapalTable(),
            ],
          ),
        ),
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
      ),
    );
  }
}
