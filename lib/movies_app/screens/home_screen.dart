import 'package:b_shop_app/movies_app/widgets/card_swiper.dart';
import 'package:b_shop_app/movies_app/widgets/movie_slider.dart';
import 'package:flutter/material.dart';

import 'package:b_shop_app/movies_app/search/search_delegate.dart';
import 'package:provider/provider.dart';

import '../provider/movies_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Films in theaters'),
        actions: [
          IconButton(onPressed: () => showSearch(context: context, delegate: MovieSearchDelegate()),// delegate es un widget o clase que tiene ciertas condiciones
          icon: const Icon(Icons.search_rounded))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Tarjetas principales
            CardSwiper(
              movies: moviesProvider.onDisplayMovies,
            ),

            // Slider de peliculas
            MovieSlider(
              movies: moviesProvider.popularMovies,
              title: 'Populares!',
              onNextPage: () => moviesProvider.getPopularMovies(),
              
              ),
          ],
        ),
      ),
    );
  }
}
