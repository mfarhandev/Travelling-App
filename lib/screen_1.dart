import 'package:flutter/material.dart';
import 'package:travel_app/screen_2.dart';

class ScreenPage1 extends StatefulWidget {
  const ScreenPage1({Key? key}) : super(key: key);

  @override
  State<ScreenPage1> createState() => _ScreenPage1State();
}

class _ScreenPage1State extends State<ScreenPage1> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                "images/explore2.jpeg",
                fit: BoxFit.cover,
                color: Colors.black.withOpacity(0.4),
                colorBlendMode: BlendMode.darken,
              ),
            ),
            ListView(
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 30),
              children: [
                SizedBox(
                  height: h * 0.1,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Travel",
                    style: TextStyle(color: Colors.white,fontSize: 60,fontWeight: FontWeight.bold,fontFamily: "MeriendaBold"),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "before you run out of time",
                    style: TextStyle(color: Colors.white.withOpacity(0.95),fontSize: 20,fontWeight: FontWeight.w400,fontFamily: "MeriendaRegular"),
                  ),
                ),
                SizedBox(
                  height: h * 0.6,
                ),
                GestureDetector(
                  onTap: ()
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ScreenPage2()),
                    );
                  },
                  child: Container(
                    height: 50.0,
                    margin: EdgeInsets.symmetric(horizontal: 40.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: Colors.white,width: 1),
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.double_arrow,color: Colors.white,),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Lets travel",
                              style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold,fontFamily: "MeriendaRegular"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.03,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "not all who wander",
                    style: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.w300,fontFamily: "MeriendaRegular"),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "are lost",
                    style: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.w300,fontFamily: "MeriendaRegular"),
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
