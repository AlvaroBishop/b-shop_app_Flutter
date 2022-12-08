// main.dart
import 'package:flutter/material.dart';

import '../widgets/app_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(),
          SliverList(
            delegate: SliverChildListDelegate([
              AppSlider(),
              const SizedBox(
                height: 400,
                
              ),
              Container(
                height: 1000,
                color: Colors.pink,
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
            
            expandedHeight: 80,
            collapsedHeight: 60,
            floating: true,
            pinned: false,
            snap: true,
            titleTextStyle: TextStyle(height: 100),
            centerTitle: true,
            title: AppBar(
              toolbarHeight: 60,
              elevation: 0,
              title: Container(

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(70)),
                ),
                height: 60,
                padding: EdgeInsets.only(bottom: 10),
                
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextField(
                        controller: searchController,
                        onChanged: (value) => _search(),
                        decoration: InputDecoration(
                          fillColor: Colors.amber,
                          focusColor: Colors.red,
                            hintText: 'Search apps',
                            prefixIcon: Icon(Icons.search),
                            suffixIcon: IconButton(onPressed: () => searchController.text = '', icon: Icon(Icons.close)),
                            
                          ),
                      ),
                    ),
                    Container(
                      
                      margin: const EdgeInsets.only(right: 10),
                      child: CircleAvatar(
                        maxRadius: 15,
                        backgroundColor: Colors.green[900],
                        backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png'),
                      ),
                    )
                  ],
                ),
              ),
            ),
            
            
            
          );
  }
}


