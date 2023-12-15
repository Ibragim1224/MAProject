import 'package:flutter/material.dart';


class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({Key? key}) : super(key: key);

  @override
  State<MyHeaderDrawer> createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
     // color: Colors.blue[800],
      width: double.infinity,
      height: 200,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/image/first_turin_image.jpg'),
          fit: BoxFit.fill,)),
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/image/turin_avatar_img.jpg'),

              ),
            ),
          ),
          Text("Turin University",
            style: TextStyle(
                fontSize: 30,
              shadows: [
                Shadow(
                  blurRadius: 10.0,
                  color: Colors.blue,
                  offset: Offset(15.0, 5.0),
                ),
              ],
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 0.5
                  ..color = Colors.white,

            ),
          ),
          Text("in Tashkent",
            style: TextStyle(
                color: Colors.white,
                fontSize: 14,
            ),),
        ],
      ),
    );
  }
}













