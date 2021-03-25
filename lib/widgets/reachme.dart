import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const _urlGITHUB = 'https://github.com/SahilHemnani777';

void _openGitHub() async => await canLaunch(_urlGITHUB)
    ? await launch(_urlGITHUB)
    : throw 'Could not launch $_urlGITHUB';

const _urlLINKEDIN = 'https://www.linkedin.com/in/sahil-hemnani-8084b41a6/';

void _openLinkedIn() async => await canLaunch(_urlLINKEDIN)
    ? await launch(_urlLINKEDIN)
    : throw 'Could not launch $_urlLINKEDIN';

const _urlTWITTER = 'https://twitter.com/sahil_hemnani';

void _openTwitter() async => await canLaunch(_urlTWITTER)
    ? await launch(_urlTWITTER)
    : throw 'Could not launch $_urlTWITTER';

const _urlMEDIUM = 'https://medium.com/@hemnanisahil777';

void _openMedium() async => await canLaunch(_urlMEDIUM)
    ? await launch(_urlMEDIUM)
    : throw 'Could not launch $_urlMEDIUM';

final Uri _emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'hemnanisahil777@gmail.com',
    queryParameters: {'subject': 'Feel free to mail me anytime!'});

//
// const _urlINSTAGRAM = 'https://www.instagram.com/hemnaniii/';
// void _openInstagram() async =>
//     await canLaunch(_urlINSTAGRAM) ? await launch(_urlINSTAGRAM) : throw 'Could not launch $_urlINSTAGRAM';

class reachMe extends StatelessWidget {
  MainAxisAlignment alignment = MainAxisAlignment.spaceBetween;
  reachMe({this.alignment});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: this.alignment,
      children: [
        IconButton(
          iconSize: 30.0,
          hoverColor: Colors.blue,
            icon: Image.asset(
              "images/linkedIn.png",
              color: Colors.black,
            ),
            onPressed: () => _openLinkedIn()),
        SizedBox(width: 10,),
        IconButton(
            iconSize: 30.0,
            hoverColor: Colors.black45,
            icon: Image.asset(
              "images/github.png",
            ),
            onPressed: () => _openGitHub()),
        SizedBox(width: 10,),
        IconButton(
            iconSize: 30.0,
            hoverColor: Colors.blue,
            icon: Image.asset(
              "images/twitter.png",
              color: Colors.black,
            ),
            onPressed: () => _openTwitter()),
        SizedBox(width: 10,),
        IconButton(
            iconSize: 32.0,
            hoverColor: Colors.grey,
            icon: Image.asset(
              "images/medium.png",
            ),
            onPressed: () => _openMedium()),
        SizedBox(width: 10,),
        IconButton(
            iconSize: 35.0,
            hoverColor: Colors.red,
            icon: Image.asset("images/mail.png"),
            onPressed: () => launch(_emailLaunchUri.toString())),
      ],
    );
  }
}
