import 'package:flutter/material.dart';
import 'package:maxlearn/widgets/my_button.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        children: [
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
              hintText: "djenikaa@gmail.com",
              focusColor: Colors.grey,
            ),
            cursorColor: Colors.grey,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          const TextField(
            decoration: InputDecoration(
              label: Text(
                "Mot de passe",
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
              hintText: "unique1234",
              focusColor: Colors.grey,
            ),
            obscureText: true,
            cursorColor: Colors.grey,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {},
                child: const Text(
                  "Mot de passe oublié ?",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFc0e863),
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          MyButton(
            action: () {},
            text: 'Connexion',
          ),
        ],
      ),
    );
  }
}
