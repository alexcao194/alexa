import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Electronics", "Video Games", "Devices & Accessories", "Music", "Watches"];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Wrap(
        alignment: WrapAlignment.center,
        children: List.generate(
          categories.length,
          (index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ButtonStyle(
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                padding: WidgetStateProperty.all(
                  EdgeInsets.all(20),
                ),
                backgroundColor: WidgetStateProperty.all(selectedIndex == index ? Theme.of(context).primaryColor : Theme.of(context).colorScheme.secondary),
              ),
              child: Text(
                categories[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(
                  () {
                    selectedIndex = index;
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
