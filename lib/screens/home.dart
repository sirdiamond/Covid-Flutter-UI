import 'package:flutter/material.dart';
import 'package:covid/theme.dart';
import 'package:covid/screens/shared/header.dart';
import 'package:covid/screens/about.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100], //kBackground,
      body: Column(
        children: [
          Header(
              image: 'assets/Drcorona.png',
              title: 'All you need\nis stay at home.'),
          Section2(), //country location
          Section3(), //title cases update
          Section4(), //cases: infected, deaths, recovered
          Section5(), //title spread of virus map
          Section6(), //map
        ],
      ),
    );
  }
}



class Section6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      width: double.infinity,
      height: 210,
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(image: AssetImage('assets/map.png'), fit: BoxFit.contain),
        borderRadius: BorderRadius.all(Radius.circular(25)),
        boxShadow: [BoxShadow(
              color: kShadowColor,
              offset: Offset(0, 4),
              blurRadius: 30,
        )]
      ),
    );
  }
}





class Section2 extends StatefulWidget {
  @override
  _Section2State createState() => _Section2State();
}

class _Section2State extends State<Section2> {
  final List<String> _countries = ['Brazil', 'Indonesia', 'Japan', 'Israel'];

  String _currentSelected = 'Brazil';

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          border: Border.all(color: Colors.grey[300]),
        ),
        child: Row(
          children: [
            Icon(Icons.location_on, color: kSecondaryColor),
            SizedBox(width: 10),
            Flexible(
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  icon: Icon(Icons.keyboard_arrow_down, color: kSecondaryColor),
                  elevation: 0,
                  isExpanded: true,
                  items: _countries.map((String country) {
                    return DropdownMenuItem<String>(
                      value: country,
                      child: Text(country),
                    );
                  }).toList(),
                  onChanged: (String newValue) {
                    setState(() {
                      _currentSelected = newValue;
                    });
                  },
                  value: _currentSelected,
                ),
              ),
            )
          ],
        ));
  }
}

class Section3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          RichText(
            text: TextSpan(
                text: 'Case Update\n',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(color: kPrimaryColor),
                children: [
                  TextSpan(
                      text: 'Newest update July 15',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2
                          .copyWith(color: kTextLightColor))
                ]),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return AboutScreen();
              }));
            },
            child: Text('See details',
                style: Theme.of(context)
                    .textTheme
                    .subtitle2
                    .copyWith(color: kSecondaryColor)),
          ),
        ],
      ),
    );
  }
}

class Section4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 195,
      margin: EdgeInsets.symmetric(horizontal: 15),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(25)),
          boxShadow: [
            BoxShadow(
              color: kShadowColor,
              offset: Offset(0, 4),
              blurRadius: 30,
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CaseItem(color: kInfectedColor, title: 'Infectado', number: 1021),
          CaseItem(color: kDeathColor, title: 'Deaths', number: 87),
          CaseItem(color: kRecoverColor, title: 'Recovered', number: 46),
        ],
      ),
    );
  }
}

class CaseItem extends StatelessWidget {
  final Color color;
  final String title;
  final int number;

  CaseItem({this.color, this.title, this.number});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(7),
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color.withOpacity(0.25),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: color, width: 2),
              shape: BoxShape.circle,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text('$number',
            style:
                Theme.of(context).textTheme.headline2.copyWith(color: color)),
        Text(
          '$title',
          style: Theme.of(context)
              .textTheme
              .subtitle1
              .copyWith(color: kTextLightColor),
        )
      ],
    );
  }
}

class Section5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Spread of Virus',
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: kPrimaryColor)),
          Text('See details',
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  .copyWith(color: kSecondaryColor)),
        ],
      ),
    );
  }
}