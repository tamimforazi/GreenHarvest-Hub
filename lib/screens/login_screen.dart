import 'package:flutter/material.dart';
import 'package:green_harvest_hub/screens/home_screen.dart';
import 'package:green_harvest_hub/screens/registration_screen.dart';
import 'package:green_harvest_hub/widgets/button.dart';
import 'package:green_harvest_hub/widgets/page_route.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool loading = false;
  bool showSpinner = false;
  final textFieldFocusNode = FocusNode();
  bool _obscured = true;

  String phoneNumber = "";
  String password = "";
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    phoneNumberController.dispose();
    passwordController.dispose();
  }

  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
      if (textFieldFocusNode.hasPrimaryFocus) return;
      textFieldFocusNode.canRequestFocus = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    phoneNumberController.text = phoneNumber;
    passwordController.text = password;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.green,
          ),
          Column(
            children: [
              Container(
                height: 250,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 80, 10, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Image.asset("images/bd_bgremove_icon.png"),
                      // SizedBox(
                      //   width: 20,
                      // ),
                      Text(
                        'Welcome To Green Harvest Hub \nAn Agricultural market',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Text(
                          "User Login",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Text(
                          "Login here to use Mobile Number, Password",
                          style: TextStyle(
                            color: Color(0xff7B8085),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SingleChildScrollView(
                        child: Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 25.0, right: 25.0),
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width * 1,
                                  child: TextFormField(
                                    keyboardType: TextInputType.phone,
                                    controller: phoneNumberController,
                                    decoration: InputDecoration(
                                      labelText: "Mobile Number",
                                      labelStyle: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xff969A9E),
                                      ),
                                      border: OutlineInputBorder(),
                                      prefixIcon: Icon(Icons.phone_android),
                                    ),
                                    onChanged: (String value) {
                                      phoneNumber = value;
                                    },
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Enter Mobile Number';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 25.0, right: 25.0),
                                child: TextFormField(
                                  obscureText: _obscured,
                                  keyboardType: TextInputType.text,
                                  controller: passwordController,
                                  focusNode: textFieldFocusNode,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Password',
                                    labelStyle: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff969A9E),
                                    ),
                                    prefixIcon: Icon(Icons.lock_open),
                                    suffixIcon: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 0, 4, 0),
                                      child: GestureDetector(
                                        onTap: () {
                                          _obscured = !_obscured;
                                          setState(() {});
                                        },
                                        child: Icon(
                                          _obscured
                                              ? Icons.visibility_off_rounded
                                              : Icons.visibility_rounded,
                                          size: 24,
                                        ),
                                      ),
                                    ),
                                  ),
                                  onChanged: (String value) {
                                    password = value;
                                  },
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Enter password';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              SizedBox(height: 15),
                              Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: Button(
                                    title: "Login",
                                    onPress: () async {
                                      Navigator.pushReplacement(
                                          context, createRoute(HomeScreen()));
                                    }),
                              ),

                              // Consumer<AuthServices>(
                              //   builder: (context, authServices, child) {
                              //     return Padding(
                              //       padding: const EdgeInsets.only(
                              //           left: 25.0, right: 25.0),
                              //       child: authServices.isLoading
                              //           ? Center(
                              //               child: CircularProgressIndicator())
                              //           : Button(
                              //               title: "Login",
                              //               onPress: () async {
                              //                 if (_formKey.currentState!
                              //                     .validate()) {
                              //                   authServices.setLoading(true);

                              //                   final result =
                              //                       await authServices.signIn(
                              //                     phoneNumberController.text,
                              //                     passwordController.text,
                              //                   );

                              //                   authServices.setLoading(false);

                              //                   if (result['success']) {
                              //                     Navigator.pushReplacement(
                              //                         context,
                              //                         createRoute(
                              //                             HomeScreen()));
                              //                   } else {
                              //                     ScaffoldMessenger.of(context)
                              //                         .showSnackBar(
                              //                       SnackBar(
                              //                         content:
                              //                             Text(result['error']),
                              //                       ),
                              //                     );
                              //                   }
                              //                 }
                              //               },
                              //             ),
                              //     );
                              //   },
                              // ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 25.0, right: 25.0),
                                child: Row(
                                  children: [
                                    Text(
                                      "Don’t have an account?",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          createRoute(Registration()),
                                        );
                                      },
                                      child: Text(
                                        "Registration Here",
                                        style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "Green Harvest Hub",
                          style: TextStyle(
                            color: Color(0xff61676B),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
