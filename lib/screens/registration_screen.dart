import 'package:flutter/material.dart';
import 'package:green_harvest_hub/screens/login_screen.dart';
import 'package:green_harvest_hub/widgets/button.dart';
import 'package:green_harvest_hub/widgets/page_route.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final textFieldFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  final confirmPasswordFocusNode = FocusNode();

  bool _obscured = true;
  bool _obscuredConfirmed = true;
  final _formKey = GlobalKey<FormState>();

  String phoneNumber = "";
  String password = "";
  String confirmPassword = "";
  String email = "";
  String name = "";
  // String? _selectedDesignation;
  final phoneNumberController = TextEditingController();
  final emailController = TextEditingController();

  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final nameController = TextEditingController();

  // List<String> designations = [
  //   'Software Engineer',
  //   'UI/UX Designer',
  //   'Product Manager',
  //   'QA Engineer',
  //   'Business Analyst',
  //   'DevOps Engineer',
  // ];

  @override
  void dispose() {
    super.dispose();
    phoneNumberController.dispose();
    nameController.dispose();
    emailController.dispose();

    passwordController.dispose();
    confirmPasswordController.dispose();
    passwordFocusNode.dispose();
    confirmPasswordFocusNode.dispose();
    // _selectedDesignation = null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.green,
          ),
          Column(
            children: [
              Container(
                height: 170,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 80, 30, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Welcome To Green Harvest Hub \nAn Agricultural market',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0),
                        ),
                      ),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.only(left: 25.0),
                              child: Text(
                                "Registration Here",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.only(left: 25.0),
                              child: Text(
                                "Register here to use Name, Mobile number and Designation",
                                style: TextStyle(
                                  color: Color(0xff7B8085),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Positioned(
                              // top: 100,
                              // left: 100,
                              // // width: 1000,
                              // height: 1000,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 25.0, right: 25.0),
                                    child: SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width * 1,
                                      // height:
                                      //     MediaQuery.of(context).size.height /
                                      //         16,
                                      child: TextFormField(
                                        keyboardType: TextInputType.text,
                                        controller: nameController,
                                        decoration: InputDecoration(
                                          labelText: "Name",
                                          labelStyle: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff969A9E),
                                          ),
                                          border: OutlineInputBorder(),
                                          prefixIcon: Icon(Icons.person),
                                        ),
                                        onChanged: (String value) {
                                          name = value;
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
                                  SizedBox(height: 10),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 25.0, right: 25.0),
                                    child: SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width * 1,
                                      // height:
                                      //     MediaQuery.of(context).size.height /
                                      //         16,
                                      child: TextFormField(
                                        keyboardType: TextInputType.text,
                                        controller: emailController,
                                        decoration: InputDecoration(
                                          labelText: "Email",
                                          labelStyle: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff969A9E),
                                          ),
                                          border: OutlineInputBorder(),
                                          prefixIcon:
                                              Icon(Icons.email_outlined),
                                        ),
                                        onChanged: (String value) {
                                          name = value;
                                        },
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Enter Your Email';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),

                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 25.0, right: 25.0),
                                    child: SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width * 1,
                                      // height:
                                      //     MediaQuery.of(context).size.height /
                                      //         16,
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
                                  SizedBox(height: 10),

                                  // Dropdown

                                  // Padding(
                                  //   padding: const EdgeInsets.only(
                                  //       left: 25.0, right: 25.0),
                                  //   child: SizedBox(
                                  //     width: MediaQuery.of(context).size.width * 1,
                                  //     child: DropdownButtonFormField<String>(
                                  //       value: _selectedDesignation,
                                  //       onChanged: (value) {
                                  //         setState(() {
                                  //           _selectedDesignation = value;
                                  //         });
                                  //       },
                                  //       items: designations.map((designation) {
                                  //         return DropdownMenuItem<String>(
                                  //           value: designation,
                                  //           child: Text(designation),
                                  //         );
                                  //       }).toList(),
                                  //       decoration: InputDecoration(
                                  //         hintText: 'Designation',
                                  //         prefixIcon: Icon(Icons.badge_outlined),
                                  //         border: OutlineInputBorder(),
                                  //       ),
                                  //       validator: (value) {
                                  //         if (value == null || value.isEmpty) {
                                  //           return 'Please select Designation';
                                  //         }
                                  //         return null;
                                  //       },
                                  //     ),
                                  //   ),
                                  // ),

                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 25.0, right: 25.0),
                                    child: SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width * 1,
                                      // height:
                                      //     MediaQuery.of(context).size.height /
                                      //         16,
                                      child: TextFormField(
                                        obscureText: _obscured,
                                        keyboardType: TextInputType.text,
                                        controller: passwordController,
                                        focusNode: passwordFocusNode,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: 'Password',
                                          labelStyle: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff969A9E),
                                          ),
                                          prefixIcon: Icon(Icons.lock_open),
                                          suffixIcon: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 0, 4, 0),
                                            child: GestureDetector(
                                              onTap: () {
                                                _obscured = !_obscured;
                                                setState(() {});
                                              },
                                              child: Icon(
                                                _obscured
                                                    ? Icons
                                                        .visibility_off_rounded
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
                                  ),
                                  SizedBox(height: 10),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 25.0, right: 25.0),
                                    child: SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width * 1,
                                      // height:
                                      //     MediaQuery.of(context).size.height /
                                      //         16,
                                      child: TextFormField(
                                        obscureText: _obscuredConfirmed,
                                        keyboardType: TextInputType.text,
                                        controller: confirmPasswordController,
                                        focusNode: confirmPasswordFocusNode,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: 'Confirm Password',
                                          labelStyle: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff969A9E),
                                          ),
                                          prefixIcon: Icon(Icons.lock_open),
                                          suffixIcon: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 0, 4, 0),
                                            child: GestureDetector(
                                              onTap: () {
                                                _obscuredConfirmed =
                                                    !_obscuredConfirmed;
                                                setState(() {});
                                              },
                                              child: Icon(
                                                _obscuredConfirmed
                                                    ? Icons
                                                        .visibility_off_rounded
                                                    : Icons.visibility_rounded,
                                                size: 24,
                                              ),
                                            ),
                                          ),
                                        ),
                                        onChanged: (String value) {
                                          confirmPassword = value;
                                        },
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Confirm password';
                                          }
                                          if (value !=
                                              passwordController.text) {
                                            return 'Passwords do not match';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),

                                  // Consumer<AuthServices>(
                                  //   builder: (context, authServices, child) {
                                  //     return Padding(
                                  //       padding: const EdgeInsets.only(
                                  //           left: 25.0, right: 25.0),
                                  //       child: authServices.isLoading
                                  //           ? Center(
                                  //               child:
                                  //                   CircularProgressIndicator())
                                  //           : Button(
                                  //               title: "Register",
                                  //               onPress: () async {
                                  //                 if (_formKey.currentState!
                                  //                     .validate()) {
                                  //                   authServices
                                  //                       .setLoading(true);

                                  //                   final result =
                                  //                       await authServices.signUp(
                                  //                           nameController.text,
                                  //                           emailController
                                  //                               .text,
                                  //                           passwordController
                                  //                               .text,
                                  //                           phoneNumberController
                                  //                               .text);

                                  //                   authServices
                                  //                       .setLoading(false);

                                  //                   if (result['success']) {
                                  //                     Navigator.pushReplacement(
                                  //                         context,
                                  //                         createRoute(
                                  //                             VerifyOtp()));
                                  //                   } else {
                                  //                     ScaffoldMessenger.of(
                                  //                             context)
                                  //                         .showSnackBar(
                                  //                       SnackBar(
                                  //                         content: Text(
                                  //                             result['error']),
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
                                          "Already have an account?",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              createRoute(LoginScreen()),
                                            );
                                          },
                                          child: Text(
                                            "Login Here",
                                            style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Spacer(),
                            SizedBox(
                              height: 10,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "Department of Youth Development",
                                style: TextStyle(
                                  color: Color(0xff61676B),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 150,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
