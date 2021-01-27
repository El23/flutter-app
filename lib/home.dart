import 'package:flutter/material.dart';
import 'package:flutter_event_app/data/data.dart';
import 'package:flutter_event_app/models/event_model.dart';

import 'models/date_model.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<DateModel> dates =new List<DateModel> ();

  List<EventModel> events = new List();

  String todayDateIs = "26";

  @override
  void initState() {
    super.initState();
    dates = getDates();
    events = getEvents();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(color: Color(0xff2E4053)),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 50, horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        " EVENT",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        " calendar",
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "FOR YOU",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Hello, Elen !",
                            style:
                                TextStyle(color: Colors.white70, fontSize: 24),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            "Let's explore what's  will be soon",
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        child: Image.asset(
                          "assets/Im.png",
                          height: 70,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Container(
                    height: 60,
                    child: ListView.builder(
                      itemCount: dates.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return DateTile(
                          weekDay: dates[index].weekDay,
                          date: dates[index].date,
                          isSelected: todayDateIs == dates[index].date,
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "All events",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  SizedBox(height: 16,),


                  Container(
                    height: 100,
                    child: ListView.builder(
                      itemCount: events.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index){
                        return EventTile(
                          imgAssetPath: events[index].imgAssetPath,
                          eventType: events[index].eventType,
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 16,),

                  Text("Popular" , style: TextStyle(color: Colors.white, fontSize: 24),),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

class DateTile extends StatelessWidget {
  String weekDay;
  String date;
  bool isSelected;

  DateTile({this.weekDay, this.date, this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        color: isSelected ? Colors.blue : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            date,
            style: TextStyle(
              color: isSelected ? Colors.black54 : Colors.white,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            weekDay,
            style: TextStyle(
              color: isSelected ? Colors.black54 : Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class EventTile extends StatelessWidget {
  String imgAssetPath;
  String eventType;

  EventTile({this.eventType, this.imgAssetPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 27),
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
          color: Colors.black26,
        borderRadius: BorderRadius.circular(16)
      ),
     
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children:<Widget> [

          Image.asset(imgAssetPath, height: 40,color: Colors.blue,),
          SizedBox(height: 12,),
          Text(eventType, style: TextStyle(color: Colors.white),),
        ],
      ),
    );
  }
}

class Popular extends StatelessWidget {
  String descroption;
  String date;
  String address;
  String imgAssetPath;

  Popular({this.descroption, this.date, this.imgAssetPath, this.address});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children:<Widget> [
          Column(
            children:<Widget> [
              Text(descroption),
              Row(
                children:<Widget> [

                ],
              )

            ],
          )
        ],
      ),
    );
  }
}

