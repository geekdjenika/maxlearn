import 'package:flutter/material.dart';
import 'package:maxlearn/widgets/my_button.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool showPassword1 = false;
  bool showPassword2 = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        children: [
          const TextField(
            decoration: InputDecoration(
              label: Text(
                "Nom complet",
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
              hintText: "Geek Djenika",
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
          TextField(
            decoration: InputDecoration(
              label: const Text(
                "Mot de passe",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              floatingLabelStyle: const TextStyle(
                color: Colors.grey,
              ),
              border: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    8.0,
                  ),
                ),
              ),
              focusedBorder: const OutlineInputBorder(
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
              suffixIcon: InkWell(
                onTap: () {
                  setState(() {
                    showPassword1 = !showPassword1;
                  });
                },
                child: Icon(
                  showPassword1 ? Icons.visibility : Icons.visibility_off,
                ),
              ),
            ),
            obscureText: showPassword1 ? false : true,
            obscuringCharacter: '*',
            cursorColor: Colors.grey,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          TextField(
            decoration: InputDecoration(
              label: const Text(
                "Confirmer le mot de passe",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              floatingLabelStyle: const TextStyle(
                color: Colors.grey,
              ),
              border: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    8.0,
                  ),
                ),
              ),
              focusedBorder: const OutlineInputBorder(
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
              suffixIcon: InkWell(
                onTap: () {
                  setState(() {
                    showPassword2 = !showPassword2;
                  });
                },
                child: Icon(
                  showPassword2 ? Icons.visibility : Icons.visibility_off,
                ),
              ),
            ),
            obscureText: showPassword2 ? false : true,
            obscuringCharacter: '*',
            cursorColor: Colors.grey,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          MyButton(
            action: () {},
            text: 'Inscription',
          ),
        ],
      ),
    );
  }
}
