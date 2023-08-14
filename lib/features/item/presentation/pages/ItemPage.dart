import 'package:flutter/material.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Posts'),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {}, child: const Text("Adicionar Imagem")),
              ElevatedButton(
                  onPressed: () {}, child: const Text("Adicionar Video")),
              ElevatedButton(
                  onPressed: () {}, child: const Text("Adicionar Audio")),
              Container(
                height: 200,
                width: 350,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images.jpg'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                color: Colors.blue,
                height: 200,
                width: 350,
              ),
            ],
          ),
        ));
  }
}
