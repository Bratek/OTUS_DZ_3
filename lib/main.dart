import 'package:flutter/material.dart';
import 'package:otus_dz_3/models/dish.dart';
import 'package:otus_dz_3/models/dish_manager.dart';
import 'package:otus_dz_3/screens/dishes_list_screen.dart';

void main() {
  final manager = DishManager();
  final dishesList = manager.getRecipes();

  runApp(FoodApp(dishesList: dishesList));
}

class FoodApp extends StatelessWidget {
  final List<Dish> dishesList;

  const FoodApp({super.key, required this.dishesList});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFFFFFF), // Базовый цвет, от которого построятся оттенки
          primary: const Color(0xFF2D490C), // Основной цвет (кнопки, заголовки)
          secondary: const Color(0xFF2ECC71), // Акцентный цвет (элементы привлечения внимания)
          surface: const Color(0xFFECECEC), // Цвет фона карточек и панелей
        ),
        // Цвет заднего фона всего приложения
        scaffoldBackgroundColor: const Color(0xFFFFFFFF),
      ),
      home: DishesListScreen(dishesList: dishesList),
    );
  }
}
