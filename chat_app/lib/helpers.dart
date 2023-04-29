import 'dart:math';

class Helpers {
  static final random = Random();

  static String randompictures() {
    int randomInt = random.nextInt(1000);
    return 'https://picsum.photos/seed/$randomInt/300/300';
  }

  static DateTime randomDate() {
    DateTime currentTime = DateTime.now();
    int randomInt = random.nextInt(200000);
    return currentTime.subtract(Duration(seconds: randomInt));
  }
}
