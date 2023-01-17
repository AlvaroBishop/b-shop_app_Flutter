import 'package:flutter/material.dart';

class CardSlider extends StatelessWidget {

  const CardSlider({super.key});

  @override
  Widget build(BuildContext lcontext) {
    return Container(
      width: double.infinity,
      height: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                CustomCard(firstLinearColor: Colors.tealAccent, secondLinearColor: Colors.yellowAccent, title: 'Learn new things', subtitle: 'Apps to learn.'),
                CustomCard(firstLinearColor: Colors.deepPurpleAccent, secondLinearColor: Colors.cyanAccent, title: 'Relax yourself', subtitle: 'Relaxing apps'),
                CustomCard(firstLinearColor: Colors.orangeAccent, secondLinearColor: Colors.redAccent, title: 'Discover your passions', subtitle: 'Inspire yourself'),
                
                ]
            ),
          
          ),
          
        ]),
    );
  }
}

class CustomCard extends StatelessWidget {
  final MaterialAccentColor firstLinearColor;
  final MaterialAccentColor secondLinearColor;
  final String title;
  final String subtitle;
  const CustomCard({super.key, required this.firstLinearColor, required this.secondLinearColor, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      child: Card(
        margin: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 5,
        child: Container(
          decoration: BoxDecoration(
            
            gradient: LinearGradient(colors: [firstLinearColor, secondLinearColor], begin: Alignment.bottomLeft, end: Alignment.topRight,),
          ),
          child: Center(
            child: ListTile(
              title: Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900, )),
              subtitle: Text(subtitle, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900, )),
            ),
          ),
        ),
      ),
    );
  }
}

