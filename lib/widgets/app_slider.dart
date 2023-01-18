import 'package:b_shop_app/auxiliar/apps.dart';
import 'package:flutter/material.dart';

class AppSlider extends StatelessWidget {
  final String? title;

  const AppSlider({
    Key? key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      height: 240,
      color: Colors.black87,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        if (title != null)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              title!,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.tealAccent,
                fontFamily: 'OpenSans',
              ),
            ),
          ),
        const SizedBox(
          height: 5,
        ),
        Expanded(
            child: ListView.builder(
          itemBuilder: (context, index) {
            if (index < apps.length) {
              return _AppImage(
                app: apps[index],
              );
            }
            return const _AppImage();
          },
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        )),
      ]),
    );
  }
}

class _AppImage extends StatelessWidget {
  final Map? app;

  const _AppImage({super.key, this.app});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 140,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (app != null)
            GestureDetector(
                onTap: () {
                  if (app!['appName'] != null) {
                    print(app!['appName']);
                    Navigator.pushNamed(context, 'appDetails', arguments: app);
                  }
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: FadeInImage(
                    placeholder: const AssetImage('assets/no-image.jpg'),
                    image: NetworkImage(app!['appImg'] as String),
                    width: 110,
                    height: 110,
                    fit: BoxFit.cover,
                  ),
                )),
          if (app == null)
            GestureDetector(
                onTap: () {},
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: const FadeInImage(
                    placeholder: AssetImage('assets/no-image.jpg'),
                    image: AssetImage('assets/no-image.jpg'),
                    width: 110,
                    height: 110,
                    fit: BoxFit.cover,
                  ),
                )),
          if (app != null)
            Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      app!["appName"],
                      style: const TextStyle(color: Colors.white),
                    ),
                    Row(
                      children: const [
                        Text(
                          "4.6",
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.star,
                          size: 12,
                          color: Colors.white,
                        )
                      ],
                    )
                  ],
                )),
        ],
      ),
    );
  }
}
