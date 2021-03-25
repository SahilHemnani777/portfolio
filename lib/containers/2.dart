import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Two extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(left: 10, right: 10, top:40.0, bottom: 30),
        width: MediaQuery.of(context).size.width * 0.75,
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
        child: Column(
          children: [
            Center(
              child: Text(
                "Technical Stack",
                style: GoogleFonts.anton(
                    textStyle: TextStyle(
                        fontSize: 30, color: Theme.of(context).primaryColor, decoration: TextDecoration.underline)),
              ),
            ),
            SizedBox(height: 20.0,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("images/flutter.png", height: 100, width: 100,),
              Image.asset("images/android.png", height: 100, width: 100,),
              Image.asset("images/firebase.png", height: 100, width: 100,),
              Image.asset("images/dart.png", height: 100, width: 100,),
            ],),
            SizedBox(height: 20.0,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("images/java.png", height: 100, width: 100,),
                Image.asset("images/python.png", height: 100, width: 100,),
                Image.asset("images/kotlin.png", height: 100, width: 100,),
                Image.asset("images/cpp.png", height: 100, width: 100,),
              ],),
            SizedBox(height: 20.0,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("images/sqlite.png", height: 100, width: 100,),
                Image.asset("images/mysql.png", height: 100, width: 100,),
                Image.asset("images/gcloud.png", height: 150, width: 150,),
                Image.asset("images/sklearn.png", height: 150, width: 150,),
              ],),

          ],
        ),
      ),
    );
  }
}
