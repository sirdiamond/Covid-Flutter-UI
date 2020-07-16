import 'package:flutter/material.dart';


class Header extends StatelessWidget {

  final String image;
  final String title;

  Header({@required this.image, @required this.title});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Stack(
        children: [
          //background
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/virus.png')),
              gradient: LinearGradient(
                colors: [Color(0xFF3383CD), Color(0xFF11249F)],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
          ),
          //Doctor
          Positioned(
            child: Image.asset(image, fit: BoxFit.cover),
            left: 70,
            top: 70,
          ),
          //Title
          Positioned(
            top: 100,
            right: 100,
            child: Text(
              '$title',
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: Colors.white),
            ),
          ),
          Positioned(
            top: 35,
            right: 15,
            child: Image.asset('assets/menu.png'),
          )
        ],
      ),
    );
  }
}



class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}