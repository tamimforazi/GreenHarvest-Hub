import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:green_harvest_hub/screens/home_screen.dart';
import 'package:green_harvest_hub/screens/login_screen.dart';
import 'package:iconly/iconly.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 380),
                child: Image.asset('images/onboarding.png'),
              ),
              const Spacer(),
              Text('Welcome to Green Harvest Hub',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold)),
              const Padding(
                padding: EdgeInsets.only(top: 30, bottom: 30),
                child: Text(
                  "Purchase your agricultural products conveniently from home. Your favorite items are just a few clicks away.",
                  textAlign: TextAlign.center,
                ),
              ),
              /**/
              FilledButton.tonalIcon(
                onPressed: () {
                  Navigator.of(context).pushReplacement(CupertinoPageRoute(
                      builder: (context) => const LoginScreen()));
                },
                icon: const Icon(IconlyLight.login),
                label: const Text("Press to Login"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
