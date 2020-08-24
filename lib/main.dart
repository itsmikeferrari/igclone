import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IG Clone',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'IG Clone'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: SafeArea(
        // left: false,
        // top: false,
        // right: false,
        // bottom: false,
        child: Column(
          children: <Widget>[
            topbar,
            languagechooser,
            logo,
            signinform,
            forgotpassword,
            signuplink,
          ],
        ),
      ),
    );
  }
}

Widget topbar = Container(
  decoration: BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.bottomRight,
      end: Alignment.bottomLeft,
      colors: [Colors.red, Colors.pink],
    ),
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'IG Clone',
              style: GoogleFonts.oswald(
                color: Colors.white,
              ),
              softWrap: true,
            ),
            Text(
              'Find it for free on Google Play.',
              style: GoogleFonts.oswald(
                color: Colors.white,
              ),
              softWrap: true,
            ),
          ],
        ),
      ),
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
            child: OutlineButton(
              onPressed: () {},
              child: Text(
                'GET',
                style: GoogleFonts.oswald(
                  color: Colors.white,
                ),
                softWrap: true,
              ),
              borderSide: BorderSide(color: Colors.white),

              // shape: StadiumBorder(),
            ),
            // RaisedButton(
            //   color: Colors.red,
            //   onPressed: () {},
            //   child: Text(
            //     'GET',
            //     style: GoogleFonts.oswald(color: Colors.white,),
            //     softWrap: true,
            //   ),
            // ),
          ),
        ],
      ),
    ],
  ),
);

Widget languagechooser = Container(
  padding: const EdgeInsets.all(32),
  child: Text(
    'English',
    style: GoogleFonts.oswald(),
    softWrap: true,
  ),
);

Widget logo = Container(
  padding: const EdgeInsets.all(32),
  child: Text(
    'Logo',
    style: GoogleFonts.oswald(),
    softWrap: true,
  ),
);

Widget signinform = Container(
  padding: const EdgeInsets.all(32),
  child: Text(
    'Registration Form',
    style: GoogleFonts.oswald(),
    softWrap: true,
  ),
);

Widget forgotpassword = Container(
  padding: const EdgeInsets.all(32),
  child: Text(
    'Forgot password',
    style: GoogleFonts.oswald(),
    softWrap: true,
  ),
);

Widget signuplink = Container(
  padding: const EdgeInsets.all(32),
  child: Text(
    'Logo',
    style: GoogleFonts.oswald(),
    softWrap: true,
  ),
);
