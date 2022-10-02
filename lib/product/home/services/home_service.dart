import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movie_application/core/network/endpoint.dart';
import 'package:movie_application/core/network/server_exception.dart';
import 'package:movie_application/product/home/model/movie_model.dart';

import '../../../core/network/response_code.dart';

class MovieService {
  Future<List<MovieModel>?> getAllMovies() async {
    var response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode != StatusCode.OK) {
      ServerException(message: 'Fetch request in');
      return null;
    } else {
      Iterable models = jsonDecode(response.body);
      List<MovieModel> movieModels = [];
      for (var model in models) {
        MovieModel movieModel = MovieModel.fromJson(model);
        movieModels.add(movieModel);
      }
      return movieModels;
    }
  }
}
