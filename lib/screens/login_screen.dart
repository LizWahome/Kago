import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:phoneauthentication/screens/otp_screen.dart';
import 'package:provider/provider.dart';

import '../auth/auth_state.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AuthState>(context, listen: false);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: RichText(
                  text: const TextSpan(
                      text: 'Ka',
                      style: TextStyle(
                          fontFamily: 'stereofunk',
                          fontSize: 40,
                          color: Colors.black),
                      children: [
                        TextSpan(
                            text: 'go',
                            style: TextStyle(
                              color: Colors.amber,
                              fontFamily: 'stereofunk',
                              fontSize: 40,
                            ))
                      ]),
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              const Text(
                'Welcome, sign in with your phone number',
                style: TextStyle(
                  fontFamily: 'GTWalsheim',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Form(
                key: _formKey,
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  onChanged: (p0) => provider.setPhoneNumber(p0),
                  validator: (value) {
                    if (value == null) {
                      return 'Phone number cannot be empty';
                    } else if (value.length != 9) {
                      return 'Please enter a valid phone number';
                    }
                    return null;
                  },
                  decoration: InputDecoration(prefix: const Text('+254'),
                  labelText: 'phone number',
                    border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.black, width: 1.5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  ),
                ),
              ),
              const Spacer(
                flex: 3,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                    shadowColor: MaterialStateProperty.all<Color>(Colors.amber),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(16),
                        ),
                      ),
                    ),
                    side: MaterialStateProperty.all<BorderSide>(
                        const BorderSide(
                            width: 1.5, style: BorderStyle.solid))),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                      //run code
                      const OtpScreen().launch(context);
                    }
                },
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Verify number',
                    style: TextStyle(
                        fontFamily: 'GTWalsheim',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
