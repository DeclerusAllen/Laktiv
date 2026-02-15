import 'package:flutter/material.dart';
import 'detail_screen.dart';


class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Map<String, String>> recipes = [
    {
      "title": "Apple Pie",
      "image":
          "https://www.heartandstroke.ca/-/media/images/articles/foodguideplatev2-webp-mobile-992x558.webp?rev=bf74ecef4b5d4355bc4a44c80bf4bda4"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lis Resèt'),
        backgroundColor: const Color.fromARGB(255, 0, 255, 128),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Filter',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 10),

            Expanded(
              child: ListView.builder(
                itemCount: recipes.length,
                itemBuilder: (context, index) {
                  final recipe = recipes[index];

                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: ListTile(
                      leading: Image.network(
                        recipe['image'] ?? '',
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(Icons.image);
                        },
                      ),
                      title: Text(recipe['title'] ?? ''),
                      trailing: IconButton(
                        icon: const Icon(Icons.favorite_border),
                        onPressed: () {
                          print(
                              "Favorite button pressed for recipe: ${recipe['title']}");
                        },
                      ),
                     onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(
                              recipeName: recipe['title'] ?? '',
                              recipeDescription: """
                            1. Prepare tout engredyan yo.
                            2. Melanje yo byen.
                            3. Mete nan fou a 180°C pandan 40 minit.
                            4. Kite refwadi epi sèvi.
                            """,



                              recipeImage: recipe['image'] ?? '',
                            ),
                          ),
                        );
                      },

  

                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
  