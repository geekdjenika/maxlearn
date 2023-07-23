import 'package:flutter/material.dart';
import 'package:maxlearn/widgets/header.dart';
import 'package:maxlearn/widgets/my_button.dart';

class OTPVerification extends StatefulWidget {
  const OTPVerification({Key? key}) : super(key: key);

  @override
  State<OTPVerification> createState() => _OTPVerificationState();
}

class _OTPVerificationState extends State<OTPVerification> {
  List<TextEditingController> otpControllers =
      List.generate(4, (_) => TextEditingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          const MyAppBar(
            back: true,
            title: 'Vérification OTP',
            subtitle: 'Vérifier votre email pour le code de vérification',
          ),
          Container(
            height: MediaQuery.of(context).size.height * .61,
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      4,
                      (index) => SizedBox(
                        width: MediaQuery.of(context).size.width * .18,
                        child: TextField(
                          controller: otpControllers[index],
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 8.0),
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
                            hintText: '*',
                            counterText: '',
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
                          textAlign: TextAlign.center,
                          onChanged: (value) {
                            if (value.isNotEmpty &&
                                index < otpControllers.length - 1) {
                              FocusScope.of(context).nextFocus();
                            }
                            if (value.isEmpty) {
                              FocusScope.of(context).previousFocus();
                            }
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  MyButton(
                    action: () {},
                    text: 'Vérifier',
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
