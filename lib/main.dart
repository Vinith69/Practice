import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jaya_app/menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Home());
  }
}

// class Home extends StatefulWidget {
//   Home({Key key}) : super(key: key);

//   @override
//   _HomeState createState() => _HomeState();
// }

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // #F9CEDF
        backgroundColor: Color(0xff8CBBF1),
        body: Container(
            margin: EdgeInsets.fromLTRB(15, 30, 15, 0),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //! Text
                    SizedBox(height: 60),
                    Text(
                      "Hi There, This App Will Make You Learn Things Faster",
                      style: TextStyle(color: Colors.white, fontSize: 23),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 50),

                    //! Pic
                    SvgPicture.asset(
                      "assets/monster.svg",
                      height: 300,
                    ),
                    SizedBox(height: 60),

                    //! Button
                    FloatingActionButton.extended(
                      label: Text(
                        "Get Started",
                        style: TextStyle(fontSize: 30),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Menu(),
                            ));
                      },
                      backgroundColor: Color(0xffF9CEDF),
                    )

                    //! Button End
                  ]),
            )));
  }
}
