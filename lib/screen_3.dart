import 'package:flutter/material.dart';

class ScreenPage3 extends StatefulWidget {
   ScreenPage3({required this.image,required this.title,required this.location,required this.titledesc}) ;
  late String image;
  late String title;
  late String location;
  late String titledesc;
  @override
  State<ScreenPage3> createState() => _ScreenPage3State();
}

class _ScreenPage3State extends State<ScreenPage3> {
  var desc1 = 'Mother Nature is the ultimate inspiration.When your feeling sluggish, simply walking outside and getting fresh air can do wonders for your mood and outlook';
  var desc2 = 'When words escape you, turn to some of the best literary minds for these beautiful nature quotes. Now get outside and get inspired!';
  var desc3 = 'Often, natures beauty can take your breath (and words) away.In those moments of awe, we like to turn to some of our favorite nature quotes will make you want to go on a hike, sit by the lake, or just step outside to your yard. Plus short nature quotes with simple and concise language make great captions for instagram. ';
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: (){},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.favorite,color: Colors.redAccent,),
            Text("200",style: TextStyle(color: Colors.black.withOpacity(0.8),fontSize: 13,fontWeight: FontWeight.bold,fontFamily: "MeriendaRegular"),),
          ],
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Hero(
              tag: widget.image,
              child: Container(
                width: double.infinity,
                height: h*0.45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(widget.image),
                    fit: BoxFit.cover
                  )
                ),
                alignment: Alignment.topCenter,
                child: Padding(
                  padding:  EdgeInsets.only(top: 38.0,left: 18.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 40,
                      height: h*0.06,
                      decoration: BoxDecoration(color: Colors.white.withOpacity(0.24),shape: BoxShape.circle),
                      child: GestureDetector(
                        onTap: ()
                          {
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back_ios_new,color: Colors.black,size: 24,)),
                    ),
                  ),
                ),
              ),
            ),
            ListView(
              children: [
                SizedBox(height: h*0.25,),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Icon(Icons.location_on,color: Colors.white.withOpacity(0.7),size: 32,),
                      Text(widget.location,style: TextStyle(color: Colors.white.withOpacity(0.9),fontSize: 25,fontFamily: "MeriendaBold",fontWeight: FontWeight.w700),),
                    ],
                  ),
                ),
                SizedBox(height: h*0.01,),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(widget.titledesc,style: TextStyle(color: Colors.white.withOpacity(0.8),fontSize: 23,fontWeight: FontWeight.w400,fontFamily: "MeriendaBold"),),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),color: Colors.white
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: h*0.01,),
                      Text(desc1,style: TextStyle(color: Colors.black.withOpacity(0.6),fontSize: 18,fontWeight: FontWeight.w300,fontFamily: "MeriendaRegular"),),
                      SizedBox(height: h*0.01,),
                      Text(desc2,style: TextStyle(color: Colors.black.withOpacity(0.6),fontSize: 18,fontWeight: FontWeight.w300,fontFamily: "MeriendaRegular"),),
                      SizedBox(height: h*0.01,),
                      Text(desc3,style: TextStyle(color: Colors.black.withOpacity(0.6),fontSize: 18,fontWeight: FontWeight.w300,fontFamily: "MeriendaRegular"),),
                      SizedBox(height: h*0.02,),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        height: h*0.08,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.black.withOpacity(0.5),width: 1),
                        ),
                        child: Center(
                          child: Text("wanna explore",style: TextStyle(color: Colors.black.withOpacity(0.8),fontSize: 25,fontWeight: FontWeight.w700,fontFamily: "MeriendaBold"),),
                        ),
                      ),
                      SizedBox(height: h*0.02,),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text("nothing is too far",style: TextStyle(color: Colors.black.withOpacity(0.6),fontSize: 18,fontWeight: FontWeight.w300,fontFamily: "MeriendaBold"),),
                      ),
                      SizedBox(height: h*0.03,),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
