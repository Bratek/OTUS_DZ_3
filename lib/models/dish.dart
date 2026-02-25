class Dish {
  final int id;
  final String name;
  final String photo;
  final int cookingTime;

  Dish({required this.id, required this.name, this.photo = '', this.cookingTime = 0});

  String get timeToString {
    final int hours = cookingTime ~/ 60;
    final int minutes = cookingTime % 60;

    final String hoursString = (hours == 0) ? '' : '$hours час';
    final String minutesString = (minutes == 0) ? '' : '${minutes.toString().padLeft(2, "0")} минут';

    return '$hoursString $minutesString';
  }
}
