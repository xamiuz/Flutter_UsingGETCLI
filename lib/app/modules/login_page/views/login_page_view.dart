import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uts/app/modules/login_page/controllers/login_page_controller.dart';
import 'package:uts/app/modules/page_awal/views/page_awal_view.dart';

class LoginPage extends GetView<LoginPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0, 255, 255, 255),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.to(PageAwalView());
          },
        ),
        title: Text(
          'Login',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        centerTitle: true,
      ),
      backgroundColor: Color.fromRGBO(106, 106, 206, 1),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 342,
                  height: 625,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Container(
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                      Positioned.fill(
                        child: Container(
                          color: Color.fromARGB(163, 196, 208, 228),
                          margin: EdgeInsets.symmetric(vertical: 60),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Sign in with',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 16),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/image/google.jpg',
                                    width: 100,
                                    height: 50,
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'Or',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 16),
                              Padding(
                                padding: EdgeInsets.all(16),
                                child: TextField(
                                  onChanged: (value) =>
                                      controller.email.value = value,
                                  decoration: InputDecoration(
                                    labelText: 'Email',
                                    border: OutlineInputBorder(),
                                    filled: true,
                                    fillColor: Colors.white,
                                    prefixIcon: Image.asset(
                                      'assets/image/email.png',
                                      width: 24,
                                      height: 24,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(16),
                                child: TextField(
                                  onChanged: (value) =>
                                      controller.password.value = value,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    labelText: 'Password',
                                    border: OutlineInputBorder(),
                                    filled: true,
                                    fillColor: Colors.white,
                                    prefixIcon: Image.asset(
                                      'assets/image/password.png',
                                      width: 24,
                                      height: 24,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 36),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(255, 155, 127, 221),
                                  onPrimary: Colors.white,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 50,
                                    vertical: 15,
                                  ),
                                ),
                                child: Text('Login'),
                                onPressed: () => controller.login(),
                              ),
                              SizedBox(height: 38),
                              Obx(() => Text(
                                    controller.errorMessage.value,
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 14,
                                    ),
                                  )),
                              Text(
                                'I agree with the Privacy Policy',
                                style: TextStyle(
                                  color: Color.fromARGB(228, 10, 91, 231),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
