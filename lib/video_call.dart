import 'package:flutter/material.dart';

class VideoCallScreen extends StatefulWidget {
  @override
  _VideoCallScreenState createState() => _VideoCallScreenState();
}

class _VideoCallScreenState extends State<VideoCallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(preferredSize: Size.fromHeight(60),
      //         child: AppBar(backgroundColor: Colors.white30,elevation: 0,
      //     leading: Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         height: 50,
      //         width: 50,
      //         decoration: BoxDecoration(
      //           color: Colors.white,borderRadius: BorderRadius.circular(18)
      //         ),
      //         child: Icon(Icons.arrow_back_ios,
      //             color: Colors.grey[300].withOpacity(0.8)),
      //       ),
      //     ),
      //   ),
      // ),
      bottomNavigationBar: _getNavBar(context),
      body: Stack(children: [
        Container(
            child: Center(
                child: Icon(Icons.image, color: Colors.purple, size: 60))),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 18.0, left: 18, right: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(18)),
                      child: Icon(Icons.arrow_back_ios,
                          color: Colors.grey[300].withOpacity(0.8)),
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, right: 8),
                          child: Container(
                            child: Center(
                              child: Icon(
                                Icons.image,
                                color: Colors.white,
                                size: 24,
                              ),
                            ),
                            height: 150,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                color: Colors.purple),
                          ),
                        ),
                        Positioned(
                            right: 0,
                            child: Container(
                              height: 34,
                              width: 34,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
                              child: Center(
                                  child: Icon(Icons.stop_screen_share,
                                      color: Colors.purple)),
                              alignment: Alignment.topRight,
                            ))
                      ],
                    )
                  ],
                ),
                SizedBox(height: 250),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18)),
                  child: Icon(Icons.videocam_off, color: Colors.purple),
                ),
                SizedBox(height: 15),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18)),
                  child: Icon(Icons.mic_off, color: Colors.purple),
                ),
                // ),Positioned(child: )
                // Positioned(child: Icon(Icons.image,color:Colors.purple),bottom:150,)
              ],
            ),
          ),
          //   Container(
          // child:
          //     Center(child: Icon(Icons.image, color: Colors.purple, size: 54))),
        ),
      ]),
    );
  }

// Column(
//           // mainAxisAlignment: MainAxisAlignment.start,
//           // crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(height:30,width:30,color:Colors.red),
//             // Padding(
//             //   padding: const EdgeInsets.only(top: 18.0, left: 18),
//             //   child: Container(
//             //     height: 50,
//             //     width: 50,
//             //     decoration: BoxDecoration(
//             //         color: Colors.red, borderRadius: BorderRadius.circular(18)),
//             //     child: Icon(Icons.arrow_back_ios,
//             //         color: Colors.grey[300].withOpacity(0.8)),
//             //   ),
//             // ),
//           ],
//         ),

  _getNavBar(context) {
    return Container(
      height: 120,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: ClipPath(
                clipper: NavBarClipper(),
                child: Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.purple, Colors.purple],
                  )),
                )),
          ),
          Positioned(
            bottom: 60,
            width: MediaQuery.of(context).size.width,
            child: Container(
              color: Colors.transparent,
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.red,
                child: Icon(Icons.call_end),
              ),
            ),
          ),
          Positioned(
              bottom: 20,
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: Container(
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // SizedBox(
                      //     width: 2 * MediaQuery.of(context).size.width / 12),
                      Padding(
                        padding: const EdgeInsets.only(left:18.0),
                        child: Container(
                          height: 50,
                          width: 50,
                          child: Icon(Icons.message, color: Colors.purple),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                      ),
                      // Icon(Icons.message),
                      // SizedBox(
                      //     width: 5 * MediaQuery.of(context).size.width / 12),
                      Padding(
                        padding: const EdgeInsets.only(right:18.0),
                        child: Container(
                          height: 50,
                          width: 50,
                          child:
                              Icon(Icons.insert_drive_file, color: Colors.white),
                          decoration: BoxDecoration(
                            color: Colors.purple.shade400,
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                      ),
                    ],
                  ))),
        ],
      ),
    );
  }
}

class NavBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    var sw = size.width;
    var sh = size.height;
    // x3 is for giving the curve in the bottom part.
    // // y3 is for giving a certain height to the curve
    // path.cubicTo(sw/30, sh*.25, sw/10,sh/1.8, 3*sw/12,sh/1.9);
    // // path.lineTo(sw, sh*.25);
    // // // path.cubicTo(7*sw/8,sh*.65, 9*sw/10,0,sw,0);
    // // path.lineTo(sw,sh*25);
    // // path.cubicTo(sw/30,2*sh/8,sw,sh/1.8,4*sw,sh/2);
    // // path.moveTo(sw/4,sh/1.9);
    // path.lineTo(sw, sh/2);
    // path.lineTo(0, sh*25);

    // top bottom-1
    path.cubicTo(sw / 12, sh/5, sw / 12, sh / 5, 2 * sw / 12,  sh / 5);

    // bottom top-1
    // path.cubicTo(3 * sw / 12, 2 * sh / 5, 3 * sw / 12, 0, 4 * sw / 12, 0);
    path.lineTo(3 * sw / 12,  sh / 5);

    // top bottom-2
    path.cubicTo(5 * sw / 12,  sh / 5, 5 * sw / 12, 2.75 * sh / 5,
        6 * sw / 12, 2.75 * sh / 5);

    // bottom top-2
    // path.lineTo(7 * sw / 12, 0);
    // path.cubicTo(
    // 7 * sw / 12, 2 * sh / 5, 7 * sw / 12, 0, 8 * sw / 12,0);
    path.cubicTo(7 * sw / 12, 2.75 * sh / 5, 7 * sw / 12,  sh / 5,
        8 * sw / 12, sh / 5);

    // top bottom 3
    // path.cubicTo(
    //     9 * sw / 12, 0, 9 * sw / 12, 2 * sh / 5, 10 * sw / 12, 2 * sh / 5);
    path.lineTo(9 * sw / 12,  sh / 5);

    // bottom top 3
    path.cubicTo(11 * sw / 12,  sh / 5, 11 * sw / 12, sh/5, sw, 0);
    path.lineTo(sw, sh);
    path.lineTo(0, sh);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
