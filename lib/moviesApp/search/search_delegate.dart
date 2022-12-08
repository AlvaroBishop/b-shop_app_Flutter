

import 'package:flutter/material.dart';
import 'package:b_shop_app/moviesApp/provider/movies_provider.dart';
import 'package:provider/provider.dart';

import '../models/models.dart';

class MovieSearchDelegate extends SearchDelegate {

  @override
  String? get searchFieldLabel => 'Search Movie';

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(onPressed: () => query = '', icon: Icon(Icons.clear )),
    ];
    
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(onPressed: () => close(context, null), icon: Icon( Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text('buildResults');
  }

  Widget _emptyContainer() {
    return Container(
      child: Center(child: Icon( Icons.movie_creation_outlined, color: Colors.black38, size: 130,)),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if( query.isEmpty ) {
      return const Center(
        child: Icon( Icons.movie_creation_outlined,
        color: Colors.black38,
        size: 130,
      ));
    }

    final moviesProvider = Provider.of<MoviesProvider>(context, listen: false);
    moviesProvider.getSuggestionsByQuery( query);
    
    return StreamBuilder(
      builder: (_, AsyncSnapshot<List<Movie>> snapshot) {
        if( !snapshot.hasData ) return _emptyContainer();

        final movies = snapshot.data!;
        return ListView.builder(itemBuilder: (context, index) =>  _MovieItem( movies[index] ), itemCount: movies.length,);
      },
      stream: moviesProvider.suggestionStream,

    );
  }

}

class _MovieItem extends StatelessWidget {
  final Movie movie;

  const _MovieItem( this.movie) ;

  
  @override
  Widget build(BuildContext context) {

    movie.heroId = 'search-${ movie.id }';

    return ListTile(
      leading: Hero(
        tag: movie.heroId!,
        child: FadeInImage(
          placeholder: AssetImage('assets/no-image.jpg'), 
          image: NetworkImage( movie.fullPosterImg),
          width: 50,
          fit: BoxFit.contain,
        ),
      ),
      title: Text( movie.title ),
      subtitle: Text( movie.originalTitle),
      onTap: () {
        Navigator.pushNamed(context, 'details', arguments: movie);
      },
    );
  }
  
}