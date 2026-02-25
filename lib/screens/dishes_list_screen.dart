import 'package:flutter/material.dart';
import 'package:otus_dz_3/models/dish.dart';

class DishesListScreen extends StatelessWidget {
  final List<Dish> dishesList;

  const DishesListScreen({super.key, required this.dishesList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: ListView.builder(
        itemCount: dishesList.length,
        itemBuilder: (context, index) {
          return dishCard(context, dishesList[index]);
        },
      ),
    );
  }

  Widget dishCard(BuildContext context, Dish dish) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(6))),

        child: Row(
          children: [
            Image(image: AssetImage(dish.photo), width: 149, height: 136),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      dish.name,
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22, height: 1),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Icon(Icons.access_time, size: 16),
                        SizedBox(width: 8),
                        Text(
                          dish.timeToString,
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
