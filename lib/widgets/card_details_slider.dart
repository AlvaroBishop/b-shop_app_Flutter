import 'package:flutter/material.dart';

class CardDetailsSlider extends StatelessWidget {

  const CardDetailsSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Expanded(
            child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) => CustomCard(random: index + 1,),
              scrollDirection: Axis.horizontal,
             
            ),
          
          ),
          
        ]),
    );
  }
}

class CustomCard extends StatelessWidget {
  final int random;
  const CustomCard({
    Key? key, required this.random,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
                fadeInDuration: Duration(milliseconds: 500),
                placeholder: const AssetImage('assets/no-image.jpg'),
                image: NetworkImage("https://picsum.photos/500?random=${random}"),
                width: 100,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
    );
  }
}
