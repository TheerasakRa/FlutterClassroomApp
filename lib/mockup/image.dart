import 'dart:math';

const IMAGE = [
  'Assets/Images/banner1.jpg',
  'Assets/Images/banner2.jpg',
  'Assets/Images/banner3.jpg',
  'Assets/Images/banner4.jpg',
  'Assets/Images/banner5.jpg',
  'Assets/Images/banner6.jpg',
  'Assets/Images/banner7.jpg',
  'Assets/Images/banner8.jpg',
  'Assets/Images/banner9.jpg',
  'Assets/Images/banner10.jpg',
  'Assets/Images/banner11.jpg',
  'Assets/Images/banner12.jpg',
];

var random = Random();

List<dynamic> randomCourse() {
  List<dynamic> image = [];
  image.add(IMAGE[random.nextInt(IMAGE.length)]);
  return image;
}
