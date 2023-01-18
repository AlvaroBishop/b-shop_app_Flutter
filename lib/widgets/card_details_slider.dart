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
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: FadeInImage(
                            placeholder: const AssetImage('assets/no-image.jpg'),
                            image: NetworkImage("https://picsum.photos/50?random=1"),
                            width: 100,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: FadeInImage(
                            placeholder: const AssetImage('assets/no-image.jpg'),
                            image: NetworkImage("https://picsum.photos/50?random=2"),
                            width: 100,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: FadeInImage(
                            placeholder: const AssetImage('assets/no-image.jpg'),
                            image: NetworkImage("https://picsum.photos/50?random=3"),
                            width: 100,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                ),

                
                ]
            ),
          
          ),
          
        ]),
    );
  }
}
