import 'package:flutter/material.dart';
import 'package:garments_niyog/base/base.dart';
import 'package:garments_niyog/helpers/global_helper.dart';
import 'package:garments_niyog/helpers/hex_color.dart';
import 'package:garments_niyog/helpers/k_text.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class LoginPage extends StatelessWidget {
  // final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Image.asset(
                    'assets/images/logo.png',
                    height: 220,
                    width: 220,
                  ),
                  Text(
                    "Sign In",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: constraints.maxHeight * 0.05),
                  Column(
                    children: [
                      TextField(
                        onChanged: (value) {
                          Base.loginController.username.value =
                              emailController.text.trim();
                        },
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: 'Email Address',
                          filled: true,
                          fillColor: Color(0xFFF5FCF9),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.0 * 1.5, vertical: 16.0),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                        ),
                      ),
                      //privious
                      // TextFormField(
                      //   decoration: InputDecoration(
                      //     hintText: 'Email Address',
                      //     filled: true,
                      //     fillColor: Color(0xFFF5FCF9),
                      //     contentPadding: EdgeInsets.symmetric(
                      //         horizontal: 16.0 * 1.5, vertical: 16.0),
                      //     border: OutlineInputBorder(
                      //       borderSide: BorderSide.none,
                      //       borderRadius:
                      //           BorderRadius.all(Radius.circular(8)),
                      //     ),
                      //   ),
                      //   keyboardType: TextInputType.emailAddress,
                      //   onSaved: (email) {
                      //     // Save it
                      //   },
                      // ),
                      SizedBox(height: 16.0),
                      Obx(() => TextField(
                            onChanged: (value) {
                              Base.loginController.password.value =
                                  passwordController.text.trim();
                            },
                            controller: passwordController,
                            obscureText: Base.loginController.isPasswordHidden
                                .value, // Bind visibility state
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFF5FCF9),
                              prefixIcon: Icon(Icons.lock),
                              hintText: 'Password',
                              suffixIcon: IconButton(
                                icon: Icon(
                                  // Change the icon based on the password visibility
                                  Base.loginController.isPasswordHidden.value
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                ),
                                onPressed: () {
                                  // Toggle password visibility
                                  Base.loginController
                                      .togglePasswordVisibility();
                                },
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16.0 * 1.5, vertical: 16.0),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                              // errorText: validatePassword(
                              //     Base.loginController.password.value),
                            ),
                          )),
                      //privious
                      // Padding(
                      //   padding: EdgeInsets.symmetric(vertical: 16.0),
                      //   child: TextFormField(
                      //     obscureText: true,
                      //     decoration: InputDecoration(
                      //       hintText: 'Password',
                      //       filled: true,
                      //       fillColor: Color(0xFFF5FCF9),
                      //       contentPadding: EdgeInsets.symmetric(
                      //           horizontal: 16.0 * 1.5, vertical: 16.0),
                      //       border: OutlineInputBorder(
                      //         borderSide: BorderSide.none,
                      //         borderRadius:
                      //             BorderRadius.all(Radius.circular(8)),
                      //       ),
                      //     ),
                      //     onSaved: (passaword) {
                      //       // Save it
                      //     },
                      //   ),
                      // ),
                      SizedBox(height: 16.0),
                      Obx(() => ElevatedButton(
                            onPressed: () {
                              if (Base.loginController.username.value != '' &&
                                  Base.loginController.password.value != '') {
                                if (Base.loginController.isLoading.value ==
                                    false) {
                                  Base.loginController.loginCheck(context);
                                } else {
                                  Global.showScaffoldMessage(
                                    message: 'please wait .....',
                                    context: context,
                                    color: Colors.red,
                                  );
                                }
                              } else {
                                Global.showScaffoldMessage(
                                  message: 'please fill all required fields',
                                  context: context,
                                  color: Colors.red,
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: hexToColor('#33A0DA'),
                                foregroundColor: Colors.white,
                                minimumSize: Size(double.infinity, 48),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                )),
                            child: Base.loginController.isLoading.value
                                ? CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Colors.white),
                                  )
                                : KText(
                                    text: "Sign in",
                                    color: Colors.white,
                                  ),
                          )),
                      SizedBox(height: 16.0),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Login With',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .color!
                                          .withOpacity(0.64),
                                    ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Forgot Password?',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .color!
                                          .withOpacity(0.64),
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        spacing: 15,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor:
                                const Color.fromARGB(255, 212, 211, 211),
                            child: Icon(
                              Icons.facebook,
                              size: 50,
                            ),
                          ),
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.grey,
                            child: Icon(
                              Icons.face,
                              size: 50,
                            ),
                          ),
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.grey,
                            child: Icon(
                              Icons.face,
                              size: 50,
                            ),
                          ),
                        ],
                      ),

                      TextButton(
                        onPressed: () {},
                        child: Text.rich(
                          TextSpan(
                            text: "Don’t have an account? ",
                            children: [
                              TextSpan(
                                text: "Sign Up",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: hexToColor('#33A0DA'),
                                ),
                              ),
                            ],
                          ),
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .color!
                                        .withOpacity(0.64),
                                  ),
                        ),
                      ),

                      // TextButton(
                      //   onPressed: () {},
                      //   child: Text.rich(
                      //     TextSpan(
                      //       text: "Don’t have an account? ",
                      //       children: [
                      //         TextSpan(
                      //           text: "Sign Up",
                      //           style: TextStyle(color: Color(0xFF00BF6D)),
                      //         ),
                      //       ],
                      //     ),
                      //     style: Theme.of(context)
                      //         .textTheme
                      //         .bodyMedium!
                      //         .copyWith(
                      //           color: Theme.of(context)
                      //               .textTheme
                      //               .bodyLarge!
                      //               .color!
                      //               .withOpacity(0.64),
                      //         ),
                      //   ),
                      // ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
