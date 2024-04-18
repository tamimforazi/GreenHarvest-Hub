import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:green_harvest_hub/screens/login_screen.dart';
import 'package:green_harvest_hub/widgets/button.dart';
import 'package:green_harvest_hub/widgets/page_route.dart';

class RequestUnderProccess extends StatefulWidget {
  const RequestUnderProccess({Key? key}) : super(key: key);

  @override
  State<RequestUnderProccess> createState() => _RequestUnderProccessState();
}

class _RequestUnderProccessState extends State<RequestUnderProccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            color: Color(0xff2D76B7),
          ),
          Column(
            children: [
              Container(
                height: 250,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 80, 30, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("images/bd_bgremove_icon.png"),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Welcome To PDS \nSystem',
                        textAlign: TextAlign.start,
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
                      SizedBox(height: 50),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Center(
                          child: SvgPicture.asset(
                            'images/processing.svg',
                            semanticsLabel: 'My SVG Image',
                            height: 220,
                            width: 170,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Center(
                          child: Text(
                            "Request under processing",
                            style: TextStyle(
                              color: Color(0xff171818),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                        child: Center(
                          child: Text(
                            "Your submitted application is under processing. We will know you very shortly.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff171818),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                        child: Button(
                          title: "Okay",
                          onPress: () {
                            Navigator.push(
                              context,
                              createRoute(LoginScreen()),
                            );
                          },
                        ),
                      ),
                      Spacer(),
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
