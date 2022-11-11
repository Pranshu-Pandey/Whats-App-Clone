import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whatsapp_real/common/Widgets/custom_elevated_button.dart';
import 'package:whatsapp_real/common/routes/routes.dart';
import 'package:whatsapp_real/common/utils/colors.dart';
import 'package:whatsapp_real/feature/welcome/Widgets/language_button.dart';
import 'package:whatsapp_real/feature/welcome/Widgets/privacy_and_terms.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  navigateToLoginPage(context) {
    Navigator.of(context).pushNamedAndRemoveUntil(
      Routes.login,
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Coloors.backgroundDark,
      body: Center(
          child: Column(
        children: [
          Expanded(
              child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              child: Image.asset(
                'assets/images/circle.png',
                color: Coloors.greenDark,
              ),
            ),
          )),
          const SizedBox(
            height: 40,
          ),
          Expanded(
            child: Column(
              children: [
                const Text(
                  'Welcome to Whatsapp Real',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const PrivacyAndTerms(),
                CustomElevatedButton(
                  text: 'AGREE AND CONTINUE',
                  onPressed: () => navigateToLoginPage(context),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Languagebutton()
              ],
            ),
          )
        ],
      )),
    );
  }
}
