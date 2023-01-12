import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchController = TextEditingController();
  bool _isSearching = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: _isSearching ? IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: _stopSearching,
        ) : null,
        title: _isSearching ? TextField(
          controller: _searchController,
          autofocus: true,
          decoration: InputDecoration(
            hintText: 'Search',
            border: InputBorder.none,
          ),
        ) : Text('Search'),
        actions: <Widget>[
          _isSearching ? IconButton(
            icon: Icon(Icons.clear),
            onPressed: _clearSearch,
          ) : IconButton(
            icon: Icon(Icons.search),
            onPressed: _startSearching,
          ),
        ],
      ),
      body: Center(
        child: Text('Search results'),
      ),
    );
  }

  void _startSearching() {
    setState(() {
      _isSearching = true;
    });
  }

  void _stopSearching() {
    setState(() {
      _isSearching = false;
    });
  }

  void _clearSearch() {
    setState(() {
      _searchController.clear();
    });
  }
}
