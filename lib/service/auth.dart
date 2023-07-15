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
      body: Column(
        children: [
          MyAppBar(
            back: false,
            title:
                haveAccount ? "Connectez-vous à votre compte !" : "Inscription",
            subtitle:
                haveAccount ? "Connectez-vous à votre compte" : "Inscription",
          ),
          Expanded(
            flex: 2,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Expanded(
                    child: haveAccount ? const Login() : const Register(),
                  ),
                  const Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 18.0),
                          child: Text(
                            "Ou connectez-vous avec",
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Expanded(
                    child: Row(
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 10.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          haveAccount
                              ? "Vous avez déjà un compte ?"
                              : "Vous n'avez pas de compte ?",
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
                            haveAccount ? "Connexion" : "Inscription",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFc0e863),
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ],
                    ),
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
