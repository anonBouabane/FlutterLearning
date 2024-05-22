import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; 
import 'package:shopgood/view/home/detail.dart';
import 'package:shopgood/proverder/category_provider.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CategoryProvider>(builder: (context, categoryProvider, child) {
      return GridView.builder(
          itemCount: 4,
          shrinkWrap: true,
          primary: false,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.8,
              crossAxisSpacing: 0.8,
              mainAxisSpacing: 0.8),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DetailScreen()));
              },
              child: Card(
                elevation: 5,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(categoryProvider.product[categoryProvider.currentIndex]["image"],scale: 1,)),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Performing hot reload...',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              "120,000 LAK",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          });
    });
  }
}