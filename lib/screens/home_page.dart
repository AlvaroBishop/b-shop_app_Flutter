// main.dart
import 'package:b_shop_app/widgets/card_slider.dart';
import 'package:flutter/material.dart';
import 'package:b_shop_app/auxiliar/apps.dart';


import '../widgets/app_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var apps1 = apps;
  var apps2 = apps;
  var apps3 = apps;


  @override
  Widget build(BuildContext context) {
    apps1.shuffle();
    apps2.shuffle();
    apps3.shuffle();
    return Scaffold(
      backgroundColor: Colors.black87,
      body: CustomScrollView(
        slivers: [
          const _CustomAppBar(),
          SliverList(
            delegate: SliverChildListDelegate([
              AppSlider(title: 'Popular Apps', apps: apps1,),
              
              Container(
                padding: const EdgeInsets.only(top: 20),
                color: Colors.black87,
                child:  const CardSlider(),
              ),
              AppSlider(title: 'Educational Apps', apps: apps2,),
              AppSlider(title: 'Messaging Apps', apps: apps3,),
              Container(
                height: 100,
                child: const Center(child: Text("No rights reserved 2023", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget {

  
  const _CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();

    void _search() {
      print(searchController.text);
    }
    return SliverAppBar(
            floating: true,
            pinned: true,
            snap: false,
            centerTitle: false,
            title: const Text('B-shop'),
            titleTextStyle: const TextStyle(color: Colors.tealAccent, fontFamily:  'OpenSans', fontSize: 35, fontWeight: FontWeight.bold),
            actions: [
              Container(
                
                      margin: const EdgeInsets.only(right: 15),
                      child: CircleAvatar(
                        maxRadius: 19,
                        backgroundColor: Colors.green[900],
                        backgroundImage: const NetworkImage('https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png'),
                      ),
                    )
            ],
            bottom: AppBar(
              title: Container(
                width: double.infinity,
                height: 40,
                color: Colors.white,
                child:  Center(
                  child: TextField(
                    controller: searchController,
                    onChanged: (value) => _search(),
                    decoration: InputDecoration(
                        hintText: 'Search apps',
                        prefixIcon: const Icon(Icons.search),
                        suffixIcon: IconButton(onPressed: () => searchController.text = '', icon: const Icon(Icons.close)),
                  ),
                ),
              ),
            ),
          )
    );
  }
}


