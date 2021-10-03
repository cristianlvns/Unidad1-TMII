import 'package:flutter/material.dart';
import 'package:trabajo_unidad_1/src/pages/info.dart';

class Homepage extends StatelessWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> estados = ['Chihuahua', 'Jalisco', 'Quintana Roo'];
    List<String> pathImagenes = [
      'images/chihuahua.jpg',
      'images/jalisco.jpg',
      'images/quintanaroo.jpg'
    ];
    String descrChihuahua = 'Es el estado con mayor extensión de la '
        'República Mexicana y se encuentra en la región norte del país, '
        'limita al este con Coahuila y al sur con Durango. Tan grande como su '
        'territorio es la belleza de sus atractivos y su historia. '
        'Lleno de una inmensa riqueza natural que comprende desierto, sierra y llanura.';
    String descrJalisco =
        'Entre campos de agave, playas, montañas, grandes ciudades '
        'y Pueblos Mágicos está el estado de Jalisco.';
    String descrQroo = 'Es un estado privilegiado por la naturaleza, '
        'rodeado del hermoso mar Caribe, manglares, selva, cenotes, ríos subterráneos y lagunas, '
        'es sin duda el paraíso mexicano.';
    List<String> descripcion = [descrChihuahua, descrJalisco, descrQroo];
    List<String> paginas = ['/chihuahua', '/jalisco', '/quintanaroo'];

    return Scaffold(
      appBar: AppBar(title: const Text('Buen Viaje')),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: estados.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: InkWell(
              child: Column(
                children: [
                  Image(image: AssetImage(pathImagenes[index])),
                  ListTile(
                    title: Text(estados[index]),
                    subtitle: Text(descripcion[index]),
                    minVerticalPadding: 16,
                  ),
                ],
              ),
              onTap: () {
                Navigator.pushNamed(context, paginas[index]);
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.info_outline),
        heroTag: 'fab2',
        tooltip: 'Información',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Info()),
          );
        },
      ),
    );
  }
}
