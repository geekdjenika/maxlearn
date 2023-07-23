import 'package:flutter/material.dart';
import 'package:maxlearn/screens/otp_verification.dart';
import 'package:maxlearn/widgets/header.dart';
import 'package:maxlearn/widgets/my_button.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          const MyAppBar(
            back: true,
            title: 'Mot de passe oublié',
            subtitle: 'Entrer votre email pour réinitialiser le mot de passe',
          ),
          Container(
            height: MediaQuery.of(context).size.height * .65,
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      label: Text(
                        "Email",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      floatingLabelStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            8.0,
                          ),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            8.0,
                          ),
                        ),
                      ),
                      focusColor: Colors.grey,
                    ),
                    cursorColor: Colors.grey,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  MyButton(
                    action: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const OTPVerification(),
                        ),
                      );
                    },
                    text: 'Continuer',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
