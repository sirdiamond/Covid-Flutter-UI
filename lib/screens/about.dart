import 'package:covid/screens/shared/header.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Header(
            image: 'assets/coronadr.png',
            title: 'Get to know\nAbout Covid-19.',
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Text('Symptomps',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(color: kPrimaryColor)),
          ),
          Section3(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Text('Prevention',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(color: kPrimaryColor)),
          ),
          PreventionItem(image: 'assets/wear_mask.png', title: 'Wear face mask', text: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
          SizedBox(height: 30),
          PreventionItem(image: 'assets/wash_hands.png', title: 'Wash your hands', text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
        ]));
  }
}

class PreventionItem extends StatelessWidget {
  final String image;
  final String text;
  final String title;

  PreventionItem({this.image, this.text, this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Stack(children: [
            Positioned(
              top: 11,
              child: Container(
                width: constraints.maxWidth,
                height: 136,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
            ),
            Image.asset(image),
            Positioned(
              left: 150,
              top: 21,
              width: constraints.maxWidth - 150,
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(text: '$title\n\n', style: Theme.of(context).textTheme.headline6),
                  TextSpan(text: "$text", style: Theme.of(context).textTheme.bodyText2),
                ]),
              ),
            ),
            Positioned(
              bottom: 15,
              right: 2,
              child: Icon(Icons.keyboard_arrow_right, color: kSecondaryColor))
          ]);
        },
      ),
    );
  }
}

class Section3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Row(children: [
        SymptompItem(
            title: 'Headache', image: 'assets/headache.png', active: true),
        SizedBox(width: 15),
        SymptompItem(title: 'Cough', image: 'assets/cough.png'),
        SizedBox(width: 15),
        SymptompItem(title: 'Fever', image: 'assets/fever.png'),
      ]),
    );
  }
}

class SymptompItem extends StatelessWidget {
  final String title;
  final String image;
  final bool active;

  SymptompItem({this.title, this.image, this.active = false});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment(0, 0.8),
        height: 130,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(image), alignment: Alignment(0, -0.4)),
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(12)),
            boxShadow: [
              if (active)
                BoxShadow(
                    color: kActiveShadowColor,
                    blurRadius: 30,
                    offset: Offset(0, 5))
            ]),
        child: Text('$title', style: Theme.of(context).textTheme.bodyText2),
      ),
    );
  }
}
