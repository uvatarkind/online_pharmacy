import 'package:flutter/material.dart';

import '../auth/login.dart';
import '../funcations/funcation2.dart';
// ignore: unused_import
import 'homepage.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(color: Color(0xff1361C8)),
            ),
            ClipPath(
              clipper: CurvedBottomClipper(),
              child: Container(
                height: 510,
                color: Color(0xff618AE1),
              ),
            ),
            ClipPath(
              clipper: CurvedBottomClipper(),
              child: Container(
                height: 500,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/startpage/fscreen.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.5,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 1),
                      child: Text(
                        "A pharmacy",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "for all your needs",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 1,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 5),
                      child: Text(
                        "with few clicks, place your",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          wordSpacing: 1,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                    Text(
                      "order and wait for it to be delivered",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        wordSpacing: 1,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 25),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login(),
                            ),
                          );
                        },
                        style: ButtonStyle(
                          minimumSize: WidgetStateProperty.all(Size(350, 55)),
                          backgroundColor:
                              WidgetStateProperty.all(Colors.white),
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(color: Colors.white),
                            ),
                          ),
                        ),
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                            color: Color(0xff255ED6),
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
