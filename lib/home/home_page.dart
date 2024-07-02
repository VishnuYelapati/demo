import 'package:flutter/material.dart';
import '../constants.dart';
import '../models/category.dart';
import 'category_home_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcontentColor,
      body: SingleChildScrollView(
        child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            childAspectRatio: 0.90,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          itemCount: categoriesList.length,
          itemBuilder: (context, index) {
            return CategoryHomePage(category: categoriesList[index]);
          },
        ),
      ),
    );
  }
}
