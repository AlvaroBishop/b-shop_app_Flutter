import 'package:flutter/material.dart';

class AppDetailsSlider extends StatelessWidget {

  const AppDetailsSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CustomDetailsCard(firstLinearColor: Colors.tealAccent, secondLinearColor: Colors.yellowAccent, title: 'Learn new things', subtitle: 'Apps to learn.'),
                SizedBox(child: Container(color: Colors.grey), height: 100,),
                CustomDetailsCard(firstLinearColor: Colors.deepPurpleAccent, secondLinearColor: Colors.cyanAccent, title: 'Relax yourself', subtitle: 'Relaxing apps'),
                CustomDetailsCard(firstLinearColor: Colors.orangeAccent, secondLinearColor: Colors.redAccent, title: 'Discover your passions', subtitle: 'Inspire yourself'),
                CustomDetailsCard(firstLinearColor: Colors.orangeAccent, secondLinearColor: Colors.redAccent, title: 'Discover your passions', subtitle: 'Inspire yourself'),
                
                ]
            ),
          
          ),
          
        ]),
    );
  }
}

class CustomDetailsCard extends StatelessWidget {
  final MaterialAccentColor firstLinearColor;
  final MaterialAccentColor secondLinearColor;
  final String title;
  final String subtitle;
  const CustomDetailsCard({super.key, required this.firstLinearColor, required this.secondLinearColor, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: 150,
      child: Card(
        color: Colors.black,
        child: ClipPath(
          child: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(color: Colors.greenAccent, width: 5),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '4.5',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    Icon(Icons.star, color: Colors.white, size: 15,)
                  ],
                ),
              ],
            ),
          ),
          clipper: ShapeBorderClipper(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3))),
        ),
      )
    );
  }
}

