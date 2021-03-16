import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'Pages/movie_list_page.dart';
import 'Viewmodels/MovieListViewModel.dart';

void main() => runApp(App());

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: "Movies",
        home: ChangeNotifierProvider(
          create: (context) => MovieListViewModel(),
          child: MovieListPage(),
        )
    );
  }

}