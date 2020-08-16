// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
//   // const StaggeredTile.count(0),
//   //   const StaggeredTile.count(1),
//   const StaggeredTile.count(2, 2),
//   const StaggeredTile.count(2, 1.7),
//   const StaggeredTile.count(2, 2),
//   const StaggeredTile.count(2, 2),
//   const StaggeredTile.count(2, 2),
//   const StaggeredTile.count(2, 2),
//   const StaggeredTile.count(2, 2),
//   const StaggeredTile.count(2, 2),
//   const StaggeredTile.count(2, 2),
//   const StaggeredTile.count(2, 2),
//   const StaggeredTile.count(2, 2),
// ];

// List<Widget> _tiles = const <Widget>[
//   const _Example01Tile(Colors.green, Icons.widgets, 50,"Coding"),
//   const _Example01Tile(Colors.lightBlue, Icons.wifi, 85,"Trading"),
//   const _Example01Tile(Colors.amber, Icons.panorama_wide_angle, 50,"Cooking"),
//   const _Example01Tile(Colors.brown, Icons.map, 50,"Marketing"),
//   const _Example01Tile(Colors.deepOrange, Icons.send, 50,"Learning"),
//   const _Example01Tile(Colors.indigo, Icons.airline_seat_flat, 50,"Swimming"),
//   const _Example01Tile(Colors.red, Icons.bluetooth, 50,"Chess"),
//   const _Example01Tile(Colors.pink, Icons.battery_alert, 50,"Ludo"),
//   const _Example01Tile(Colors.purple, Icons.desktop_windows, 50,"Web dev"),
//   const _Example01Tile(Colors.blue, Icons.radio, 50,"C++"),
// ];

// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//           preferredSize: Size.fromHeight(100.0),
//           child: AppBar(
//             backgroundColor: Colors.white30, elevation: 0,
//             automaticallyImplyLeading: false, // hides leading widget
//             flexibleSpace: Padding(
//               padding: const EdgeInsets.only(left: 8.0, top: 15),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(
//                             top: 30.0, left: 8, bottom: 5),
//                         child: Text("Hello Carlos",
//                             style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 30,
//                                 fontWeight: FontWeight.w600)),
//                       ),
//                       Text("Let's upgrade your skill!")
//                     ],
//                   ),
//                   SizedBox(width: 117),
//                   Container(
//                       height: 45,
//                       width: 45,
//                       decoration: BoxDecoration(
//                           color: Colors.purple,
//                           borderRadius: BorderRadius.circular(18)))
//                 ],
//               ),
//             ),
//           )),
//       body: Padding(
//         padding: const EdgeInsets.only(left: 15.0, right: 15, top: 4),
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 12.0, right: 12),
//               child: Container(
//                 height: 50,
//                 width: MediaQuery.of(context).size.width,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(50),
//                   boxShadow: [
//                     BoxShadow(
//                         color: Colors.grey[300].withOpacity(0.8),
//                         blurRadius: 2,
//                         spreadRadius: 5)
//                   ],
//                 ),
//                 child: Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left: 12, right: 12),
//                       child: Icon(
//                         Icons.search,
//                         color: Colors.grey[300],
//                       ),
//                     ),
//                     Text("Search Course",
//                         style: TextStyle(
//                             color: Colors.grey.withOpacity(0.7),
//                             height: 1.3,
//                             fontSize: 15))
//                   ],
//                 ),
//               ),
//             ),
//             Padding(
//                 padding: EdgeInsets.only(left: 15, right: 15, top: 15),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text("Categories",
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 19,
//                             fontWeight: FontWeight.w600,
//                             height: 1.3)),
//                     Text(
//                       "View All",
//                       style: TextStyle(
//                           fontWeight: FontWeight.w500, letterSpacing: -0.8),
//                     )
//                   ],
//                 )),
//             Expanded(
//               child: SingleChildScrollView(
//                 child: Expanded(
//                   child: Container(
//                     height: MediaQuery.of(context).size.height,
//                     width: MediaQuery.of(context).size.width,
//                     child: StaggeredGridView.count(
//                       crossAxisCount: 4,
//                       staggeredTiles: _staggeredTiles,
//                       children: _tiles,
//                       mainAxisSpacing: 15.0,
//                       crossAxisSpacing: 14.0,
//                     ),
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _Example01Tile extends StatelessWidget {
//   const _Example01Tile(
//       this.backgroundColor, this.iconData, this.containerHeight,this.courseTitle);

//   final Color backgroundColor;
//   final containerHeight;
//   final IconData iconData;
//   final courseTitle;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(4.0),
//       child: new Container(
//           decoration: BoxDecoration(boxShadow: [BoxShadow(color:Colors.grey[300].withOpacity(.6),blurRadius: 2,spreadRadius: 4)],
//               borderRadius: BorderRadius.circular(18), color: Colors.white),
//           // color: backgroundColor,
//           child: new Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                   height: containerHeight == 50 ? 85 : 65,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(18),
//                           topRight: Radius.circular(18)),
//                       color: backgroundColor)),
//               Padding(
//                 padding: const EdgeInsets.fromLTRB(10, 15, 8.0, 4),
//                 child: Text(courseTitle,
//                     style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
//               ),
//               Padding(
//                 padding: const EdgeInsets.fromLTRB(10, 0, 8.0, 0),
//                 child: Text("12 Courses"),
//               )
//             ],
//           )
//           // InkWell(
//           //   onTap: () {},
//           //   child: new Center(
//           //     child: new Padding(
//           //       padding: const EdgeInsets.all(4.0),
//           //       child: new Icon(
//           //         iconData,
//           //         color: Colors.white,
//           //       ),
//           //     ),
//           //   ),
//           // ),
//           ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_ui_9_hello_carlos_educational_app/courses.dart';

List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
  // const StaggeredTile.count(0),
  //   const StaggeredTile.count(1),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 1.7),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 2),
];

List<Widget> _tiles = const <Widget>[
  const _Example01Tile(Colors.green, Icons.widgets, 50, "Coding"),
  const _Example01Tile(Colors.lightBlue, Icons.wifi, 85, "Trading"),
  const _Example01Tile(Colors.amber, Icons.panorama_wide_angle, 50, "Cooking"),
  const _Example01Tile(Colors.brown, Icons.map, 50, "Marketing"),
  const _Example01Tile(Colors.deepOrange, Icons.send, 50, "Learning"),
  const _Example01Tile(Colors.indigo, Icons.airline_seat_flat, 50, "Swimming"),
  const _Example01Tile(Colors.red, Icons.bluetooth, 50, "Chess"),
  const _Example01Tile(Colors.pink, Icons.battery_alert, 50, "Ludo"),
  const _Example01Tile(Colors.purple, Icons.desktop_windows, 50, "Web dev"),
  const _Example01Tile(Colors.blue, Icons.radio, 50, "C++"),
];

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                          child: Text("Hello Carlos",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600)),
                        ),
                        Text("Let's upgrade your skill!")
                      ],
                    ),
                    SizedBox(width: 100),
                    Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(15)))
                  ],
                ),
              ),
            )),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15, top: 4),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, right: 12),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[200].withOpacity(0.6),
                              blurRadius: 2,
                              spreadRadius: 5)
                        ],
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12, right: 12),
                            child: Icon(
                              Icons.search,
                              color: Colors.grey[300],
                            ),
                          ),
                          Text("Search Course",
                              style: TextStyle(
                                  color: Colors.grey.withOpacity(0.7),
                                  height: 1.3,
                                  fontSize: 15))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 15, right: 15, top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Categories",
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
                      )),SizedBox(height:10),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Expanded(
                        child: Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          child: StaggeredGridView.count(
                            crossAxisCount: 4,
                            staggeredTiles: _staggeredTiles,
                            children: _tiles,
                            mainAxisSpacing: 15.0,
                            crossAxisSpacing: 14.0,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
                bottom: 50,
                right: 15,
                left: 15,
                child: Padding(
                  padding: const EdgeInsets.only(left: 3.0, right: 3),
                  child: Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.home,
                          color: Colors.purple,
                        ),
                        Icon(Icons.message,
                            color: Colors.grey[300].withOpacity(0.8)),
                        Icon(Icons.folder,
                            color: Colors.grey[300].withOpacity(0.8)),
                        Icon(Icons.settings,
                            color: Colors.grey[300].withOpacity(0.8))
                      ],
                    ),
                  ),
                ))
          ],
        ));
  }
}

class _Example01Tile extends StatelessWidget {
  const _Example01Tile(this.backgroundColor, this.iconData,
      this.containerHeight, this.courseTitle);

  final Color backgroundColor;
  final containerHeight;
  final IconData iconData;
  final courseTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (_)=>CoursesScreen()));
},
          child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: new Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.grey[300].withOpacity(.6),
                  blurRadius: 2,
                  spreadRadius: 4)
            ], borderRadius: BorderRadius.circular(18), color: Colors.white),
            // color: backgroundColor,
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: containerHeight == 50 ? 85 : 65,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(18),
                            topRight: Radius.circular(18)),
                        color: backgroundColor)),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 15, 8.0, 4),
                  child: Text(courseTitle,
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 8.0, 0),
                  child: Text("12 Courses"),
                )
              ],
            )
            ),
      ),
    );
  }
}
