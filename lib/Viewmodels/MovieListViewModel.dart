
import 'package:flutter/material.dart';
import 'package:mvvm/Services/Webservice.dart';
import 'package:mvvm/Viewmodels/movie_view_model.dart';


class MovieListViewModel extends ChangeNotifier {

  List<MovieViewModel> movies = List<MovieViewModel>();

  Future<void> fetchMovies(String keyword) async {

    final results =  await Webservice().fetchMovies(keyword);
    this.movies = results.map((item) => MovieViewModel(movie: item)).toList();
    print(this.movies);
    notifyListeners();
  }
}
