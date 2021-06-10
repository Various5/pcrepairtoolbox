import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
// url launcher
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: _launchURL,
          child: Text('open'),
        ),
      ),
    ),
  ));
}
_launchURL() async {
  const url = "https://google.com";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}