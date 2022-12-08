import 'package:b_shop_app/movies_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class AppSlider extends StatelessWidget {
  const AppSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> apps = [ 
      {
        'appImg' : 'https://cdn.pixabay.com/photo/2016/07/04/11/25/clapperboard-1496440_960_720.png',
        'appName' : 'movies',
      },
      {
        'appImg' : 'https://cdn.pixabay.com/photo/2021/03/02/17/37/accounting-6063321_960_720.png',
        'appName' : 'expenses',
      },
    ];
  
    return Container(
      width: double.infinity,
      height: 200,
      color: Colors.black87,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
            itemBuilder: (context, index) {
              if(index < apps.length) {
                
                return _AppImage(appImg: apps[index]['appImg'] as String, appName: apps[index]['appName'] as String,);
              } 
              return _AppImage();
            }, 
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            )
          
          ),
          
        ]),
    );
  }
}




class _AppImage extends StatelessWidget {
  final String? appImg;
  final String? appName;
  const _AppImage({super.key, this.appImg, this.appName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 130,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if(appImg != null)
            GestureDetector(
              onTap: () {
                if(appName != null)
                {
                  print(appName);
                  Navigator.pushNamed(context, appName!);
                }
              },
              child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'),
                image: NetworkImage(appImg!),
                width: 130,
                height: 130,
                fit: BoxFit.cover,
              ),
            )
            ),
          if(appImg == null)
          GestureDetector(
            onTap: () {
              
            },
            child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'),
              image: AssetImage('assets/no-image.jpg'),
              width: 130,
              height: 130,
              fit: BoxFit.cover,
            ),
          )
          ),
        ],
      ),
    );
  }
}
