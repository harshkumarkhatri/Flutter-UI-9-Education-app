import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class CoursesScreen extends StatefulWidget {
  @override
  _CoursesScreenState createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(100.0),
            child: AppBar(
              backgroundColor: Colors.white30, elevation: 0,
              automaticallyImplyLeading: false, // hides leading widget
              flexibleSpace: Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 30.0, left: 8, bottom: 5),
                          child: Text("Select Courses",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600)),
                        ),
                        Text("12 Courses ready to be learned")
                      ],
                    ),
                    SizedBox(width: 75),
                    Container(
                        height: 50,
                        width: 50,
                        child: Icon(Icons.settings,
                            color: Colors.grey[300].withOpacity(0.99)),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)))
                  ],
                ),
              ),
            )),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 17.0, right: 17, top: 4),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                // color: Colors.red,
                child: ListView(
                  children: [
                    // Blue container
                    Container(
                      height: 245,
                      // color: Colors.blue,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          horizontalItems(Colors.black, Colors.white,
                              Colors.purple, Colors.purple),
                          SizedBox(width: 15),
                          horizontalItems(Colors.white, Colors.purple,
                              Colors.amber, Colors.white),
                          SizedBox(width: 15),
                          horizontalItems(Colors.black, Colors.white,
                              Colors.purple, Colors.purple),
                          SizedBox(width: 15),
                          horizontalItems(Colors.white, Colors.purple,
                              Colors.amber, Colors.white),
                          SizedBox(width: 15),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    // Text
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white30,
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Android Developer",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w600,
                                        height: 1.3)),
                                Text(
                                  "View All",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: -0.8),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    verticalItems(
                        "Installation & Intro", "10:54", "minutes", 100),
                    verticalItems("Learn the Kotlin", "12:59", "minutes", 79),
                    verticalItems("Export with Figma", "02:59", "minutes", 59),
                    verticalItems("Java", "02:59", "minutes", 29),
                    verticalItems(
                        "Installation & Intro", "10:54", "minutes", 100),
                    verticalItems("Learn the Kotlin", "12:59", "minutes", 79),
                    verticalItems("Export with Figma", "02:59", "minutes", 59),
                    verticalItems("Java", "02:59", "minutes", 29)
                  ],
                ),
              ),
            ),

            // This is the overlaying widget
            Positioned(
                bottom: 50,
                right: 15,
                left: 15,
                child: Padding(
                  padding: const EdgeInsets.only(left: 3.0, right: 3),
                  child: Container(
                    height: 65,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(boxShadow: [BoxShadow(color:Colors.white.withOpacity(0.8),blurRadius: 2,spreadRadius: 4)],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 8, 0, 8),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 44,
                            width: 44,
                            child:
                                Icon(Icons.restore_page, color: Colors.white),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.amber),
                          ),
                          SizedBox(width: 10),
                          Container(
                              width: MediaQuery.of(context).size.width / 1.4,
                              child: Center(
                                  child: Text("Get the Course",
                                      style: TextStyle(color: Colors.white,height:1.2,fontSize: 16,fontWeight: FontWeight.w500,letterSpacing: -0.9))),
                              decoration: BoxDecoration(
                                  color: Colors.purple,
                                  borderRadius: BorderRadius.circular(50)))
                        ],
                      ),
                    ),
                  ),
                ))
          ],
        ));
  }

  Widget verticalItems(
      courseTitle, duration, durationUnit, double indicatorValue) {
    return Container(
        height: 72,
        width: MediaQuery.of(context).size.width,
        // color: Colors.red,
        child: Column(
          children: [
            Container(
                height: 70,
                width: MediaQuery.of(context).size.width,
                color: Colors.white30,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey[300].withOpacity(0.7),
                                  blurRadius: 2,
                                  spreadRadius: 4)
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Icon(
                            Icons.image,
                            color: Colors.grey.withOpacity(0.6),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 135,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(courseTitle,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500)),
                            Text(
                              duration,
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey.withOpacity(0.7),
                                  fontWeight: FontWeight.w300),
                            ),
                            Text(
                              durationUnit,
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey.withOpacity(0.7),
                                  fontWeight: FontWeight.w300),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 70),
                      Container(
                        height: 44,
                        width: 44,
                        child: SfRadialGauge(
                          axes: [
                            RadialAxis(
                                minimum: 0,
                                maximum: 100,
                                showLabels: false,
                                showTicks: false,
                                startAngle: 270,
                                endAngle: 270,
                                pointers: [
                                  RangePointer(
                                      value: indicatorValue,
                                      color: Colors.purple,
                                      cornerStyle: CornerStyle.bothFlat,
                                      width: 0.1,
                                      sizeUnit: GaugeSizeUnit.factor),
                                ],
                                annotations: [
                                  GaugeAnnotation(
                                      positionFactor: 0.1,
                                      angle: 100,
                                      widget: Icon(Icons.play_arrow,
                                          color: Colors.purple))
                                ],
                                axisLineStyle: AxisLineStyle(
                                    thickness: 0.1,
                                    cornerStyle: CornerStyle.bothFlat,
                                    color: Colors.grey[300].withOpacity(0.7),
                                    thicknessUnit: GaugeSizeUnit.factor))
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ));
  }

  Widget horizontalItems(
      textColor, bgColor, smallContBGColor, lastContBorderTextColor) {
    return Container(
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
                color: Colors.grey[200].withOpacity(0.6),
                blurRadius: 2,
                spreadRadius: 4)
          ]),
      height: MediaQuery.of(context).size.height,
      width: 180,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 15.0),
            child: Text("Android Developer",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: textColor,
                    fontSize: 22,
                    height: 1.2,
                    fontWeight: FontWeight.w500)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 15.0),
            child: Container(
              decoration: BoxDecoration(
                  color: smallContBGColor,
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text("\$50.00",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 68, left: 15.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(width: 1, color: lastContBorderTextColor),
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  width: 123,
                  child: Row(
                    children: [
                      Icon(Icons.watch_later, color: lastContBorderTextColor),
                      Text("8 hours, 20 min",
                          style: TextStyle(color: lastContBorderTextColor))
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      // color: Colors.black
    );
  }
}
