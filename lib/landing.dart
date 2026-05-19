import 'package:flutter/material.dart';
import 'package:flutter_application_1/helper/helper_shape.dart';
import 'package:flutter_application_1/helper/helper_widget.dart';
import 'package:flutter_application_1/pages/login.dart';

class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  int warnaBiru = 0xff2b7fff;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconApp(),
              Text(
                'Rental Kamera',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text('Reservasi kamera lebih mudah'),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    ElevatedButtonSquircle(
                      width: double.infinity,
                      height: 50,
                      backgroundColor: Colors.blue,
                      text: 'Login',
                      color: Colors.white,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                    ),
                    Text('Atau'),
                    ElevatedButtonSquircle(
                      width: double.infinity,
                      height: 50,
                      backgroundColor: Colors.lightBlue,
                      text: 'Sign Up',
                      color: Colors.white,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
