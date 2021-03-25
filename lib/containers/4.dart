import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';


const _urldatapp = 'https://github.com/SahilHemnani777/my_portfolio';

void _openDATAPP() async => await canLaunch(_urldatapp)
    ? await launch(_urldatapp)
    : throw 'Could not launch $_urldatapp';

const _urldatapp2 = 'https://github.com/SahilHemnani777/my_portfolio';

void _openDATAPP2() async => await canLaunch(_urldatapp2)
    ? await launch(_urldatapp2)
    : throw 'Could not launch $_urldatapp2';




const _urlregression = 'https://github.com/SahilHemnani777/chat_bot';

void _openREGRESSION() async => await canLaunch(_urlregression)
    ? await launch(_urlregression)
    : throw 'Could not launch $_urlregression';

const _urlregression2 = 'https://www.linkedin.com/posts/sahil-hemnani-8084b41a6_flutter-flutterdev-flutterdeveloper-activity-6778049521151815680-_2Au';

void _openREGRESSION2() async => await canLaunch(_urlregression2)
    ? await launch(_urlregression2)
    : throw 'Could not launch $_urlregression2';






const _urlbrain = 'https://github.com/SahilHemnani777/bakda_animations';

void _openBRAIN() async => await canLaunch(_urlbrain)
    ? await launch(_urlbrain)
    : throw 'Could not launch $_urlbrain';

const _urlbrain2 = 'https://www.linkedin.com/posts/sahil-hemnani-8084b41a6_motionlayout-constraintlayout-android-activity-6767345413365358592-iMmK';

void _openBRAIN2() async => await canLaunch(_urlbrain2)
    ? await launch(_urlbrain2)
    : throw 'Could not launch $_urlbrain2';






const _urlsudoku = 'https://github.com/SahilHemnani777/LightDarkMotion';

void _openSUDOKU() async => await canLaunch(_urlsudoku)
    ? await launch(_urlsudoku)
    : throw 'Could not launch $_urlsudoku';

const _urlsudoku2 = 'https://www.linkedin.com/posts/sahil-hemnani-8084b41a6_motionlayout-androiddevchallenge-androiddevelopment-activity-6774664532154490880-bmut';

void _openSUDOKU2() async => await canLaunch(_urlsudoku2)
    ? await launch(_urlsudoku2)
    : throw 'Could not launch $_urlsudoku2';

class Four extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: EdgeInsets.only(top:30.0,left: 10, right: 10, bottom: 30.0),
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: BoxDecoration(color: Colors.transparent),
          child: Center(
            child: Column(
              children: [
                Center(
                  child: Text(
                    "Development Projects [Flutter, Android, Web]",
                    style: GoogleFonts.anton(
                        textStyle: TextStyle(
                            fontSize: 30,
                            color: Theme.of(context).primaryColor,
                            decoration: TextDecoration.underline)),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Row(
                        children: [
                          IconButton(
                              color: Colors.grey,
                              iconSize: 30.0,
                              icon: Image.asset("images/github.png"),
                              onPressed: () {_openDATAPP();}),
                          IconButton(
                              color: Colors.grey,
                              iconSize: 30.0,
                              icon: Image.asset("images/linkedin.png"),
                              onPressed: () {_openDATAPP2();}),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      "Potfolio (this.project)",
                      style: GoogleFonts.kalam(
                          textStyle: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Row(
                        children: [
                          IconButton(
                              color: Colors.grey,
                              iconSize: 30.0,
                              icon: Image.asset("images/github.png"),
                              onPressed: () {_openREGRESSION();}),
                          IconButton(
                              color: Colors.grey,
                              iconSize: 30.0,
                              icon: Image.asset("images/linkedin.png"),
                              onPressed: () {_openREGRESSION2();}),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      "Chatting application- UI/UX",
                      style: GoogleFonts.kalam(
                          textStyle: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Row(
                        children: [
                          IconButton(
                              color: Colors.grey,
                              iconSize: 30.0,
                              icon: Image.asset("images/github.png"),
                              onPressed: () {_openBRAIN();}),
                          IconButton(
                              color: Colors.grey,
                              iconSize: 30.0,
                              icon: Image.asset("images/linkedin.png"),
                              onPressed: () {_openBRAIN2();}),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      "Bakda Animations- (Motion Layout)",
                      style: GoogleFonts.kalam(
                          textStyle: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Row(
                        children: [
                          IconButton(
                              color: Colors.grey,
                              iconSize: 30.0,
                              icon: Image.asset("images/github.png"),
                              onPressed: () {_openSUDOKU();}),
                          IconButton(
                              color: Colors.grey,
                              iconSize: 30.0,
                              icon: Image.asset("images/linkedin.png"),
                              onPressed: () {_openSUDOKU2();}),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      "Night-Morning (light-dark theme)",
                      style: GoogleFonts.kalam(
                          textStyle: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
