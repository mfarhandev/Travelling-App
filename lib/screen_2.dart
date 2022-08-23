import 'package:flutter/material.dart';
import 'package:travel_app/screen_3.dart';

class ScreenPage2 extends StatefulWidget {
  const ScreenPage2({Key? key}) : super(key: key);

  @override
  State<ScreenPage2> createState() => _ScreenPage2State();
}

class _ScreenPage2State extends State<ScreenPage2> {
  late List recomendation = [
    "images/ocean.jpeg",
    "images/snow.jpeg",
    "images/beach.jpg",
    "images/desert.jpeg",
    "images/forest.jpg",
    "images/Mountain.jpg"
  ];
  late List places = ["Ocean", "Snow", "Beach", "Desert", "Forest", "Mountain"];
  late List topics = [
    "Top",
    "Popular",
    "Trending",
    "Favourite",
    "Most visited"
  ];
  late List topicimages = [
    "images/Mountain.jpg",
    "images/forest.jpg",
    "images/ocean.jpeg",
    "images/snow.jpeg",
    "images/desert.jpeg",
    "images/beach.jpg"
  ];
  late List location = ["kashmir", "Changamanga", "Karachi", "Murree", "Thar","Lahore"];
  late List topicdesc = ["Comes and feels the silence of mountains", "Drizzling sunshine with half dry leaves", "Silence sound near sea shores with silent breeze", "White snow just like cotton fur melting", "We are standing near shore waiting for you","As far as you look only find sand and shine"];

  late String topicchosen = "Top";
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        toolbarHeight: 80.0,
        leading: Icon(
          Icons.sort,
          color: Colors.black.withOpacity(0.7),
          size: 35,
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.black.withOpacity(0.5),
            size: 35,
          ),
          SizedBox(
            width: 20.0,
          ),
          CircleAvatar(
            backgroundImage: AssetImage("images/explore2.jpeg"),
          ),
          SizedBox(
            width: 20.0,
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(left: 20.0),
          physics: BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: h * 0.02,
            ),
            Text(
              "Your daily",
              style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
              fontFamily: "MeriendaRegular"),
            ),
            Text(
              "Recommendation",
              style: TextStyle(
                  color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold,fontFamily: "MeriendaBold"),
            ),
            SizedBox(
              height: h * 0.01,
            ),
            Container(
              height: h * 0.27,
              child: ListView.builder(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: recomendation.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.only(
                        left: index == 0 ? 0 : 20, bottom: 15, top: 5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 5.0,
                    child: Container(
                      width: 190.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                            image: AssetImage(recomendation[index]),
                            fit: BoxFit.cover),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              colors: [
                                Colors.transparent,
                                Colors.transparent,
                                Colors.transparent,
                                Colors.black.withOpacity(0.6),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                        ),
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          places[index],
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 21,
                              fontWeight: FontWeight.w300,
                              fontFamily: "MeriendaBold",
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: h * 0.02,
            ),
            Container(
              height: h * 0.1,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemCount: topics.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            topicchosen = topics[index];
                          });
                        },
                        child: Text(
                          topics[index],
                          style: TextStyle(
                              color: topicchosen == topics[index]
                                  ? Colors.black
                                  : Colors.black.withOpacity(0.5),
                              fontSize: 20,
                              fontWeight: topicchosen == topics[index]
                                  ? FontWeight.w700
                                  : FontWeight.w400,fontFamily: "MeriendaBold"),
                        ),
                      ),
                    );
                  }),
            ),
            ListView.builder(
              itemCount: recomendation.length,
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context,index)
                {
                  return GestureDetector(
                    onTap: ()
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ScreenPage3(
                            image: topicimages[index],
                            title: places[index],
                            location: location[index],
                            titledesc:topicdesc[index]
                        ),
                        ),
                      );
                    },
                    child: Card(
                      margin: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                      elevation: 5.0,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Expanded(
                            flex:35,
                              child: Hero(
                                tag: topicimages[index],
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  height: h*0.1,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                      image: AssetImage(topicimages[index]),
                                      fit: BoxFit.cover
                                    )
                                  ),
                                ),
                              ),
                          ),
                          Expanded(
                            flex: 65,
                              child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.location_on,color: Colors.grey.withOpacity(0.6),size: 20.0,),
                                    Text(location[index],style: TextStyle(color: Colors.black.withOpacity(0.7),fontSize: 15,fontWeight: FontWeight.w300,fontFamily: "MeriendaBold"),),
                                  ],
                                ),
                                Divider(),
                                Text(topicdesc[index],style: TextStyle(color: Colors.black.withOpacity(0.8),fontSize: 16,fontWeight: FontWeight.w700,fontFamily: "MeriendaBold"),)
                              ],
                              )
                          ),
                        ],
                      ),
                    ),
                  );
                }
            )
          ],
        ),
      ),
    );
  }
}
