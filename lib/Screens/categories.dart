import 'package:flutter/material.dart';
import 'package:savyour_app/Screens/Models/categories_model.dart';


class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: cat.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
             // crossAxisSpacing: 5,
             // mainAxisSpacing: 10
              ),
        itemBuilder: (context, index) {
          return Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(cat[index].image),
                ),
              ),
              Text(cat[index].text, style: Theme.of(context).textTheme.bodyLarge,)
            ],
          );
        });
  }
}
