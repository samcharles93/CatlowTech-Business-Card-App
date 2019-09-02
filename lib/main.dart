import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:samcat/universal/my-theme-catlowtech.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);

  runApp(CtechApp());
}

class CtechApp extends StatefulWidget {
  @override
  _CtechAppState createState() => _CtechAppState();
}

class _CtechAppState extends State<CtechApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CatlowTech",
      debugShowCheckedModeBanner: false,
      theme: catlowtechTheme,
      home: Scaffold(
        backgroundColor: Colors.grey.shade700,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Spacer(),
              Card(
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/sam2.jpg'),
                ),
                shape: CircleBorder(),
                elevation: 30,
                margin: EdgeInsets.zero,
              ),
              Padding(
                padding: EdgeInsets.only(top: 16.0, bottom: 4.0),
                child: Text(
                  "Samuel Catlow",
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 38,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 2.5,
                      color: Colors.white),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Text(
                  "MOBILE & WEB DEVELOPER",
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w100,
                      letterSpacing: 2.5,
                      color: Colors.white70),
                ),
              ),
              SizedBox(
                height: 10.0,
                width: 150.0,
                child: Divider(
                  color: Colors.white24,
                  thickness: 1.5,
                ),
              ),
              Card(
                elevation: 10,
                margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: ListTile(
                  leading: Icon(Icons.phone),
                  title: Text("(+61) 0422 897 042"),
                  onTap: () {
                    launch("tel:+61422897042");
                  },
                ),
              ),
              Card(
                elevation: 10,
                margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: ListTile(
                  leading: Icon(Icons.email),
                  title: Text("info@catlow.tech"),
                  onTap: () async {
                    var emailUrl =
                        '''mailto:info@catlow.tech?subject=More information on CatlowTech&body=Hi,\n\nI'd like more info on: ''';
                    var out = Uri.encodeFull(emailUrl);
                    await launch(out);
                  },
                ),
              ),
              Card(
                elevation: 10,
                margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: ListTile(
                  leading: Icon(Icons.link),
                  title: Text("https://catlow.tech"),
                  onTap: () async {
                    await launch("https://www.catlow.tech");
                  },
                ),
              ),
              Spacer(),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "Version 1.0.0" + "\t" + "Copyright © 2019 CatlowTech",
                      style: TextStyle(fontSize: 12, color: Colors.white30),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
