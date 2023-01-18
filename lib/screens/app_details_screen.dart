// main.dart
import 'package:b_shop_app/widgets/app_details_slider.dart';
import 'package:b_shop_app/widgets/card_details_slider.dart';
import 'package:flutter/material.dart';

class AppDetails extends StatefulWidget {
  const AppDetails({Key? key}) : super(key: key);

  @override
  State<AppDetails> createState() => _AppDetailsState();
}

class _AppDetailsState extends State<AppDetails> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    print(args["algo"]);

    ImageProvider<Object> getImage() {
      var image = (args != null)
          ? NetworkImage(args["appImg"])
          : AssetImage('assets/no-image.jpg');

      return image as ImageProvider<Object>;
    }

    return Scaffold(
      backgroundColor: Colors.black87,
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                margin: const EdgeInsets.all(10),
                height: 100,
                child: Row(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: FadeInImage(
                      placeholder: AssetImage('assets/no-image.jpg'),
                      image: getImage(),
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(15),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            args["appName"],
                            style: TextStyle(
                                fontSize: 26,
                                color: Colors.white,
                                fontFamily: 'OpenSans'),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "${args["appName"]}.com",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.teal,
                                fontFamily: 'OpenSans'),
                          ),
                        ]),
                  )
                ]),
              ),
              const AppDetailsSlider(),
              Container(
                height: 35,
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      textStyle: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      )),
                  child: const Text('Coming Soon'),
                ),
              ),
              Container(
                height: 200,
                child: const CardDetailsSlider(),
              ),
              Container(
                height: 200,
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "About this App",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'OpenSans',
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris imperdiet nisl at pellentesque facilisis. Sed condimentum risus id ipsum aliquet, vel vestibulum arcu consectetur. ",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(3.5),
                            child: Container(
                              margin: const EdgeInsets.only(right: 20),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey)),
                              height: 30,
                              width: 80,
                              child: const Center(
                                  child: Text(
                                "Test",
                                style: TextStyle(color: Colors.grey),
                              )),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(3.5),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey)),
                              height: 30,
                              width: 80,
                              child: const Center(
                                  child: Text(
                                "Test",
                                style: TextStyle(color: Colors.grey),
                              )),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 300,
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(3.5),
                    child: Container(
                      margin: const EdgeInsets.only(right: 20),
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      height: 400,
                      width: MediaQuery.of(context).size.width * .85,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Center(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.share_outlined,
                                      color: Colors.grey,
                                    ),
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Column(
                                        children: [
                                          const Text(
                                              "No data shared with third parties"),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.cloud_download_outlined,
                                      color: Colors.grey,
                                    ),
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                              "This app may collect these data types"),
                                          SizedBox(height: 10),
                                          Text(
                                              "Location, Personal info and 5 others"),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.lock_outline_rounded,
                                      color: Colors.grey,
                                    ),
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Column(
                                        children: [
                                          const Text("Data is encrypted"),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.delete_outline_rounded,
                                      color: Colors.grey,
                                    ),
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Column(
                                        children: [
                                          const Text(
                                              "You can request that data to be deleted"),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ]),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                child: Text(
                  "All prices included VAT",
                  style: TextStyle(color: Colors.grey),
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
