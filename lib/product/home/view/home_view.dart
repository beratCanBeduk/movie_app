import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final List<Map> myProducts =
        List.generate(30, (index) => {"id": index, "name": "Product $index"})
            .toList();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 2 / 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
            itemCount: myProducts.length,
            itemBuilder: (BuildContext ctx, index) {
              return Column(
                children: [
                  Container(
                    height: 200,
                    color: Colors.deepOrange,
                  ),
                  Container(
                    height: 100,
                    color: Colors.black,
                  ),
                ],
              );
            }),
      ),
    );
  }
}
