class MoviesImage {
  final int? id;
  final String? imgUrl;

  MoviesImage({
    this.id,
    this.imgUrl,
  });
}

final String img = "assets/images/";

final moviesList = <MoviesImage>[
  MoviesImage(
    id: 0,
    imgUrl: "${img}anatolia.png",
  ),
  MoviesImage(
    id: 1,
    imgUrl: "${img}bird_box.png",
  ),
  MoviesImage(
    id: 2,
    imgUrl: "${img}bright.png",
  ),
  MoviesImage(
    id: 3,
    imgUrl: "${img}dig.png",
  ),
  MoviesImage(
    id: 4,
    imgUrl: "${img}django.png",
  ),
  MoviesImage(
    id: 5,
    imgUrl: "${img}god_father.png",
  ),
  MoviesImage(
    id: 6,
    imgUrl: "${img}great_hack.png",
  ),
  MoviesImage(
    id: 7,
    imgUrl: "${img}hateful_eight.png",
  ),
  MoviesImage(
    id: 8,
    imgUrl: "${img}inception.png",
  ),
  MoviesImage(
    id: 9,
    imgUrl: "${img}ivory.png",
  ),
  MoviesImage(
    id: 10,
    imgUrl: "${img}jumanji.png",
  ),
  MoviesImage(
    id: 11,
    imgUrl: "${img}king.png",
  ),
  MoviesImage(
    id: 12,
    imgUrl: "${img}okja.png",
  ),
  MoviesImage(
    id: 13,
    imgUrl: "${img}pianist.png",
  ),
  MoviesImage(
    id: 14,
    imgUrl: "${img}social_network.png",
  ),
];