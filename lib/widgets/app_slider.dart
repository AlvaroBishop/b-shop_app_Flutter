import 'package:b_shop_app/movies_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class AppSlider extends StatelessWidget {
  final String? title;

  const AppSlider({
    Key? key, this.title,
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
      padding: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      height: 220,
      color: Colors.black87,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null) 
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                title!,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.tealAccent, fontFamily:  'OpenSans',),
              ),
            ),
            
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: ListView.builder(
            itemBuilder: (context, index) {
              if(index < apps.length) {
                
                return _AppImage(appImg: apps[index]['appImg'] as String, appName: apps[index]['appName'] as String,);
              } 
              return const _AppImage();
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
      margin: const EdgeInsets.symmetric(horizontal: 10),
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
                placeholder: const AssetImage('assets/no-image.jpg'),
                image: NetworkImage(appImg!),
                width: 110,
                height: 110,
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
                child: const FadeInImage(
                  placeholder: AssetImage('assets/no-image.jpg'),
                  image: AssetImage('assets/no-image.jpg'),
                  width: 110,
                  height: 110,
                  fit: BoxFit.cover,
                ),
              )
            ),
          Container(
            
            child: Text("Test")
          
          ),

        ],
      ),
    );
  }
}
