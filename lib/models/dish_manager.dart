import 'package:otus_dz_3/models/dish.dart';

class DishManager {
  static final List<Dish> _dishesList = [
    Dish(id: 1, name: 'Лосось в соусе терияки', photo: 'assets/images/photo_recipe1.png', cookingTime: 45),
    Dish(id: 2, name: 'Поке боул с сыром тофу', photo: 'assets/images/photo_recipe2.png', cookingTime: 30),
    Dish(id: 3, name: 'Стейк из говядины по-грузински', photo: 'assets/images/photo_recipe3.png', cookingTime: 75),
    Dish(id: 4, name: 'Тосты с голубикой и бананом', photo: 'assets/images/photo_recipe4.png', cookingTime: 45),
    Dish(id: 5, name: 'Паста с морепродуктами', photo: 'assets/images/photo_recipe5.png', cookingTime: 25),
    Dish(id: 6, name: 'Бургер с двумя котлетами', photo: 'assets/images/photo_recipe6.png', cookingTime: 60),
    Dish(id: 7, name: 'Пицца Маргарита домашняя', photo: 'assets/images/photo_recipe7.png', cookingTime: 25),
  ];

  List<Dish> getRecipes() {
    return _dishesList;
  }
}
