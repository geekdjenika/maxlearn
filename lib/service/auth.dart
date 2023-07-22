import 'package:flutter/material.dart';
import 'package:maxlearn/screens/login.dart';
import 'package:maxlearn/screens/register.dart';
import 'package:maxlearn/widgets/header.dart';
import 'package:maxlearn/widgets/oauth_tile.dart';

class Authentication extends StatefulWidget {
  const Authentication({super.key});

  @override
  State<Authentication> createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  bool haveAccount = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          MyAppBar(
            back: false,
            title:
                haveAccount ? "Connectez-vous à votre compte !" : "Inscription",
            subtitle: haveAccount
                ? "Connectez-vous à votre compte"
                : "Créer votre compte",
          ),
          Container(
            height: MediaQuery.of(context).size.height * .65,
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  haveAccount ? const Login() : const Register(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Expanded(
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Text(
                          haveAccount
                              ? "Ou connectez-vous avec"
                              : "Ou inscrivez-vous avec",
                        ),
                      ),
                      const Expanded(
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OAuthTile(
                        icon: "google",
                        text: "Google",
                      ),
                      OAuthTile(
                        icon: "facebook",
                        text: "Facebook",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        haveAccount
                            ? "Vous n'avez pas de compte ?"
                            : "Vous avez déjà un compte ?",
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                          fontSize: 16.0,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            haveAccount = !haveAccount;
                          });
                        },
                        child: Text(
                          haveAccount ? "Inscription" : "Connexion",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFc0e863),
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
