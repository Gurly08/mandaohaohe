import 'package:flutter/material.dart';
import 'package:mandaohe/presentation/pages/login.dart';
import 'package:mandaohe/presentation/pages/sign.dart';
import 'package:mandaohe/presentation/widget/theme.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff68A4FF), Colors.white])),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              const Image(
                image: AssetImage('assets/images/frame.png'),
                height: 400,
              ),
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.bottomLeft,
                child: Column(
                  children: [
                    Text(
                      "Find\nYour Easily\nCargo",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 25),
                    ),
                  ],
                ),
              ),
              const Text(
                'Nikmati pengalaman yang sederhana dan praktis dalam merencanakan perjalanan laut Anda.',
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Login()));
                },
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    elevation: 8,
                    shadowColor: Colors.black,
                    backgroundColor: const Color(0xff5875DC),
                    minimumSize: const Size.fromHeight(45)),
                child: Text(
                  "Login",
                  textAlign: TextAlign.center,
                  style: mediumWhiteTextStyle.copyWith(fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Sign()));
                },
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    elevation: 8,
                    shadowColor: Colors.black,
                    backgroundColor: Colors.white,
                    minimumSize: const Size.fromHeight(45)),
                child: Text("Sign Up",
                    textAlign: TextAlign.center,
                    style: mediumBlackTextStyle.copyWith(fontSize: 15)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
