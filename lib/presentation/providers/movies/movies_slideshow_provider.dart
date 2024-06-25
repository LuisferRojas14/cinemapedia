import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/presentation/providers/movies/movies_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final moviesSlideshowProvider = Provider<List<Movie>>((ref){
  final nowPlayeingMovies = ref.watch(nowPlayingMoviesProvider);

  if(nowPlayeingMovies.isEmpty) return [];

  return nowPlayeingMovies.sublist(0,6);

});