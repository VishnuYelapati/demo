import 'package:flutter/material.dart';
import '../models/category.dart';

class CategoryHomePage extends StatelessWidget {
  final Category category;

  const CategoryHomePage({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 60,
        ),
        GestureDetector(
          onTap: () {
            var snackBar = SnackBar(
              content: Text(
                "${category.title} App Not Installed",
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              duration: const Duration(seconds: 4),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(category.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  category.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
