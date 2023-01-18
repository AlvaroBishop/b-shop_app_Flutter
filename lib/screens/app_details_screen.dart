// main.dart
import 'package:b_shop_app/widgets/app_details_slider.dart';
import 'package:b_shop_app/widgets/card_slider.dart';
import 'package:flutter/material.dart';

import '../widgets/app_slider.dart';

class AppDetails extends StatefulWidget {
  const AppDetails({Key? key}) : super(key: key);

  @override
  State<AppDetails> createState() => _AppDetailsState();
}

class _AppDetailsState extends State<AppDetails> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                margin: EdgeInsets.all(10),
                height: 100,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: const FadeInImage(
                        placeholder: AssetImage('assets/no-image.jpg'),
                        image: AssetImage('assets/no-image.jpg'),
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      color: Colors.green,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("App Name", style: TextStyle(fontSize: 26, color: Colors.white, fontFamily: 'OpenSans'),),
                          SizedBox(height: 5,),
                          Text("App Name.com", style: TextStyle(fontSize: 15, color: Colors.tealAccent, fontFamily: 'OpenSans'),),
                        ]
                        ),
                    )
                  ]
                  ),
              ),
              AppDetailsSlider(),
              Container(
                height: 80,
                color: Colors.yellow,
              ),
              Container(
                height: 150,
                color: Colors.amber,
              ),
              Container(
                height: 500,
                color: Colors.purple,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}


