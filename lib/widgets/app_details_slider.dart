import 'package:flutter/material.dart';

class AppDetailsSlider extends StatelessWidget {
  final Map args;
  const AppDetailsSlider({super.key, required this.args});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
            child: CustomDetailsCard(
          args: args,
        )),
      ]),
    );
  }
}

class CustomDetailsCard extends StatelessWidget {
  final Map args;
  const CustomDetailsCard({super.key, required this.args});

  @override
  Widget build(BuildContext context) {
    return ListView(scrollDirection: Axis.horizontal, children: [
      Container(
          width: 150,
          child: Card(
            color: Colors.black,
            child: ClipPath(
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  border: Border(
                    right: BorderSide(
                      color: Colors.greenAccent,
                      width: .4,
                    ),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          args["stars"],
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 15,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '${args["reviews"]}K reviews',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Icon(
                          Icons.info_outline_rounded,
                          size: 14,
                          color: Colors.white,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )),
      Container(
          width: 150,
          child: Card(
            color: Colors.black,
            child: ClipPath(
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  border: Border(
                    right: BorderSide(
                      color: Colors.greenAccent,
                      width: .4,
                    ),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.download,
                      size: 20,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      args["size"],
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          )),
      Container(
          width: 150,
          child: Card(
            color: Colors.black,
            child: ClipPath(
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  border: Border(
                    right: BorderSide(
                      color: Colors.greenAccent,
                      width: .4,
                    ),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    FadeInImage(
                      placeholder: AssetImage('assets/no-image.jpg'),
                      image: AssetImage("assets/E.png"),
                      width: 35,
                      height: 35,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
          )),
      Container(
          width: 150,
          child: Card(
            color: Colors.black,
            child: ClipPath(
              child: Container(
                padding: const EdgeInsets.all(16),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${args["downloads"]}+',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Downloads",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )),
    ]);
  }
}
