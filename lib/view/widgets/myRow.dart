import 'package:aplication_one/model/pet.dart';
import 'package:flutter/material.dart';

class MyRow extends StatelessWidget {
  MyRow({
    super.key,
    required this.myPet,
  });

  //Receber o nome e a imagem ou receber um pet
  Pet myPet;

@override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      margin: EdgeInsets.all(16),
      child: Column(
        children: [
          Expanded(
            child: Image.network(myPet.image!),
          ),
          Text(myPet.name!)
        ],
      ),
    );
  }
}