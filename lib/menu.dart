import 'package:flutter/material.dart';
import 'package:jaya_app/sorting.dart';

class Menu extends StatelessWidget {
  const Menu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8CBBF1),
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //! Text
            SizedBox(height: 60),
            Text(
              "Choose a Excercise",
              style: TextStyle(color: Colors.white, fontSize: 28),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50),

            //! Button 1
            FloatingActionButton.extended(
              heroTag: "btn1",
              label: Text(
                "Sorting",
                style: TextStyle(fontSize: 30),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sorting(),
                    ));
              },
              backgroundColor: Color(0xffF9CEDF),
            ),
            SizedBox(height: 50),
            //! Button 1 End

            //! Button 2
            FloatingActionButton.extended(
              heroTag: "btn2",
              label: Text(
                "Sorting",
                style: TextStyle(fontSize: 30),
              ),
              onPressed: () {},
              backgroundColor: Color(0xffF9CEDF),
            ),
            SizedBox(height: 50),
            //! Button 2 End

            //! Button 3
            FloatingActionButton.extended(
              heroTag: "btn3",
              label: Text(
                "Alphabets",
                style: TextStyle(fontSize: 30),
              ),
              onPressed: () {},
              backgroundColor: Color(0xffF9CEDF),
            ),
            SizedBox(height: 50),
            //! Button 3 End
          ],
        ),
      ),
    );
  }
}
