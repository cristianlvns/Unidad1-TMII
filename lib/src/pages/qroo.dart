import 'package:flutter/material.dart';

class QuintanaRoo extends StatelessWidget {
  const QuintanaRoo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> nombresImagenes = [
      '1.jpg',
      '2.jpg',
      '3.jpg',
      '4.jpg',
      '5.jpg',
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quintana Roo'),
      ),
      body: GridView.builder(
        scrollDirection: Axis.vertical,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
        itemCount: nombresImagenes.length,
        itemBuilder: (context, index) {
          return Image(
              image:
                  AssetImage('images/quintanaroo/' + nombresImagenes[index]));
        },
      ),
    );
  }
}
