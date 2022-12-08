// main.dart
import 'package:flutter/material.dart';

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

class AppSlider extends StatelessWidget {
  const AppSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      color: Colors.black87,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
            itemBuilder: (context, index) => _AppImage(), 
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            )
          
          ),
          
        ]),
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
                            hintText: 'Search for something',
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

class _AppImage extends StatelessWidget {
  const _AppImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 130,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
