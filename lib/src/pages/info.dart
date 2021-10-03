import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Información'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Acerca de'),
            leading: const Icon(Icons.perm_device_information),
            onTap: () => showDialog(
                context: context, builder: (context) => _alertaAbout(context)),
          ),
          ListTile(
            title: const Text('Buscar Actualización'),
            leading: const Icon(Icons.update),
            onTap: () => showDialog(
                context: context, builder: (context) => _alertaUpdate(context)),
          ),
        ],
      ),
    );
  }

  Widget _alertaAbout(BuildContext context) {
    return AlertDialog(
      title: const Text('Acerca de'),
      content: const Text(
          'Creado por Cristian Luevanos el 2 de Octubre de 2021 para Tecnologías Móviles II.'),
      actions: [
        TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: const Text('OK'))
      ],
    );
  }

  Widget _alertaUpdate(BuildContext context) {
    return AlertDialog(
      title: const Text('Actualización'),
      content: const Text('Por el momento no hay una actualización disponible'),
      actions: [
        TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: const Text('OK'))
      ],
    );
  }
}
