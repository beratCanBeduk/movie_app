class MovieModel {
  String? movie;
  int? year;
  String? releaseDate;
  String? director;
  String? character;
  String? movieDuration;
  String? timestamp;
  String? fullLine;
  int? currentWowInMovie;
  int? totalWowsInMovie;
  String? poster;
  Video? video;
  String? audio;

  MovieModel(
      {this.movie,
      this.year,
      this.releaseDate,
      this.director,
      this.character,
      this.movieDuration,
      this.timestamp,
      this.fullLine,
      this.currentWowInMovie,
      this.totalWowsInMovie,
      this.poster,
      this.video,
      this.audio});

  MovieModel.fromJson(Map<String, dynamic> json) {
    movie = json['movie'];
    year = json['year'];
    releaseDate = json['release_date'];
    director = json['director'];
    character = json['character'];
    movieDuration = json['movie_duration'];
    timestamp = json['timestamp'];
    fullLine = json['full_line'];
    currentWowInMovie = json['current_wow_in_movie'];
    totalWowsInMovie = json['total_wows_in_movie'];
    poster = json['poster'];
    video = json['video'] != null ? Video.fromJson(json['video']) : null;
    audio = json['audio'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['movie'] = movie;
    data['year'] = year;
    data['release_date'] = releaseDate;
    data['director'] = director;
    data['character'] = character;
    data['movie_duration'] = movieDuration;
    data['timestamp'] = timestamp;
    data['full_line'] = fullLine;
    data['current_wow_in_movie'] = currentWowInMovie;
    data['total_wows_in_movie'] = totalWowsInMovie;
    data['poster'] = poster;
    if (video != null) {
      data['video'] = video!.toJson();
    }
    data['audio'] = audio;
    return data;
  }
}

class Video {
  String? s1080p;
  String? s720p;
  String? s480p;
  String? s360p;

  Video({this.s1080p, this.s720p, this.s480p, this.s360p});

  Video.fromJson(Map<String, dynamic> json) {
    s1080p = json['1080p'];
    s720p = json['720p'];
    s480p = json['480p'];
    s360p = json['360p'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['1080p'] = s1080p;
    data['720p'] = s720p;
    data['480p'] = s480p;
    data['360p'] = s360p;
    return data;
  }
}
