import 'package:firebase_phone_auth_handler/firebase_phone_auth_handler.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:phoneauthentication/screens/home_screen.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';

import '../auth/auth_state.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AuthState>(context, listen: false);
    log('Phone Number ${provider.phoneNumber}');
    return FirebasePhoneAuthProvider(
        child: FirebasePhoneAuthHandler(
            signOutOnSuccessfulVerification: false,
            linkWithExistingUser: false,
            phoneNumber: provider.phoneNumber,
            autoRetrievalTimeOutDuration: const Duration(seconds: 60),
            otpExpirationDuration: const Duration(seconds: 60),
            onCodeSent: () {
              //code
              toast("OTP has been sent", bgColor: greenColor);
            },
            onLoginSuccess: (userCredential, autoVerified) async {
              toast("You've successfully logged in", bgColor: greenColor);
              const HomeScreen().launch(context, isNewTask: true);
            },
            onLoginFailed: (authException, stackTrace) {
              switch (authException.code) {
                case 'invalid-phone-number':
                  toast("You've entered an invalid phone number",
                      bgColor: redColor);
                  break;
                case 'invalid-verification-code':
                  toast('The entered OTP is invalid!', bgColor: redColor);
                  break;
                default:
                // log(stackTrace.toString());
                // toast('Something went wrong! $stackTrace', bgColor: redColor);
                // handle error further if needed
              }
            },
            onError: (error, stackTrace) {},
            builder: (context, controller) {
              return controller.isSendingCode
                  ? Scaffold(
                      appBar: AppBar(
                          backgroundColor: Colors.amber,
                          title: Text(
                            'Sending otp ...',
                            style: boldTextStyle(),
                          )),
                      body: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : Scaffold(
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
                              const SizedBox(
                                height: 30,
                              ),
                              const Spacer(
                                flex: 1,
                              ),
                              const Text(
                                'Enter the six digit code sent to you',
                                style: TextStyle(
                                  fontFamily: 'GTWalsheim',
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 35,
                              ),
                              Pinput(
                                length: 6,
                                onCompleted: (value) async =>
                                    await controller.verifyOtp(value),
                                onSubmitted: (value) async =>
                                    await controller.verifyOtp(value),
                              ),
                              // Pinput(
                              //   length: 6,
                              //   defaultPinTheme: PinTheme(
                              //       width: 60,
                              //       height: 60,
                              //       decoration: BoxDecoration(
                              //           borderRadius: BorderRadius.circular(10),
                              //           border: Border.all(
                              //             color: Colors.black,
                              //           )),
                              //       textStyle: const TextStyle(
                              //         fontSize: 20,
                              //         fontFamily: 'GTWalsheim',
                              //         fontWeight: FontWeight.bold,
                              //       )),
                              //   focusNode: _pinPutFocusNode,
                              //   controller: _pinPutController,
                              //   pinAnimationType: PinAnimationType.fade,
                              //   onCompleted: (pin) async {
                              //     try {
                              //       await FirebaseAuth.instance
                              //           .signInWithCredential(PhoneAuthProvider.credential(
                              //               verificationId: _verificationCode!, smsCode: pin))
                              //           .then((value) async {
                              //         if (value.user != null) {
                              //           Navigator.pushAndRemoveUntil(
                              //               context,
                              //               MaterialPageRoute(
                              //                   builder: (context) => const HomeScreen()),
                              //               (route) => false);
                              //         }
                              //       });
                              //     } catch (e) {
                              //       FocusScope.of(context).unfocus();
                              //     }
                              //   },
                              // ),
                              const Spacer(
                                flex: 3,
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.black),
                                    shadowColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.grey),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(16),
                                        ),
                                      ),
                                    ),
                                    side: MaterialStateProperty.all<BorderSide>(
                                        const BorderSide(
                                            width: 1.5,
                                            style: BorderStyle.solid))),
                                onPressed: () {},
                                //   onPressed: () {},
                                //   child: const Padding(
                                //     padding: EdgeInsets.all(16.0),
                                child: const Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Text(
                                    'SIGN IN',
                                    style: TextStyle(
                                        fontFamily: 'GTWalsheim',
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                //   ),
                                // )
                              )
                            ],
                          ),
                        ),
                      ),
                    );
            }));
  }
}
  