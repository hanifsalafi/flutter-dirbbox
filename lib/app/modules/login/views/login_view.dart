// ignore_for_file: prefer_const_constructors

import 'package:dirbbox/app/modules/profile/views/profile_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF1F1F1),
        body: Stack(
          children: [
            // Top Background
            Container(
              width: Get.width,
              child: Image.asset(
                "assets/images/top-bg-login.png",
                fit: BoxFit.cover,
              ),
            ),
            // Body
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    child: Image.asset(
                      "assets/images/pic-login.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text("Welcome to", style: TextStyle(fontSize: 20)),
                  Text("Dirbbox",
                      style:
                          TextStyle(fontSize: 38, fontWeight: FontWeight.bold)),
                  SizedBox(height: 20),
                  Container(
                    width: 220,
                    child: Text(
                      "Best cloud storage platform for all business and individuals to manage there data\n\nJoin For Free.",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  SizedBox(height: 45),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/icons/smart-id-icon.png"),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Smart Id",
                                  style: TextStyle(color: Color(0xFF567DF4))),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.indigo.shade50,
                            padding: EdgeInsets.symmetric(
                              vertical: 15,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(() => ProfileView());
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Sign in",
                                  style: TextStyle(color: Colors.white)),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset("assets/icons/arrow-right-icon.png"),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF567DF4),
                            padding: EdgeInsets.symmetric(
                              vertical: 20,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 45),
                  Center(
                    child: Text(
                      "User Social Login",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/instagram-logo.png"),
                      SizedBox(width: 50),
                      Image.asset("assets/icons/facebook-logo.png"),
                      SizedBox(width: 50),
                      Image.asset("assets/icons/twitter-logo.png"),
                    ],
                  ),
                  SizedBox(height: 40),
                  Center(
                    child: Text(
                      "Create an account",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
