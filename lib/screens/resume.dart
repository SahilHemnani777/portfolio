import 'package:flutter/material.dart';
import 'package:portfolio/screens/projects.dart';

import 'contact.dart';
import '../main.dart';

class Resume extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        "images/41perBG.png",
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
      Scaffold(
        appBar: AppBar(
          elevation: 100,
          shadowColor: Theme.of(context).accentColor,
          toolbarHeight: 70,
          leading: Padding(
              padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0),
              child: Image.asset("images/circle_sahil.png")),
          actions: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Center(
                child: TextButton(
                  child: Text(
                    'Projects',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: (){
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => Projects() ,
                      ),
                          (route) => false,
                    );
                  }
                  ,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Center(
                child: TextButton(
                  child: Text(
                    'Resume',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: (){}
                  ,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Center(
                child: TextButton(
                  child: Text(
                    'Contact',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: (){
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => Contact(),
                      ),
                          (route) => false,
                    );
                  }
                  ,
                ),
              ),
            ),
          ],
          title: TextButton(
            onPressed: (){
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => HomeScreen(),
                ),
                    (route) => false,
              );
            },
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: "SAHIL",
                  style: sahilStyle,
                ),
                TextSpan(text: " HEMNANI", style: hemnaniSTYLE),
              ]),
              // 'SAHIL HEMNANI',
              // style: GoogleFonts.anton(textStyle: TextStyle(fontSize: 30.0, color: Theme.of(context).accentColor)),
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        body: Container(
          padding: EdgeInsets.all(20),
          child: Center(child: Image.asset("images/resume.jpg",))
        ),
      ),
    ]);
  }
}
