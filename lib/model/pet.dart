class Pet {
//nulos 

  // propriedades
  String? name;
  String? image;

  // construtor
  Pet({
    this.name, 
    this.image,
  });
}

// Para criar uma lista de algum tipo de dado,
//uso: List<Tipo_de_Dado> nome_var = [];
List<Pet> myPets = [
  Pet(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSt1Gy6LZF-uqgtJR5a5HRKF6jPXeqAmU4eAiQSwPSSeQ&s", name: "My Dog"),
  Pet(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSt1Gy6LZF-uqgtJR5a5HRKF6jPXeqAmU4eAiQSwPSSeQ&s", name: "My Dog"),
  Pet(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSt1Gy6LZF-uqgtJR5a5HRKF6jPXeqAmU4eAiQSwPSSeQ&s", name: "My Dog"),
  Pet(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSt1Gy6LZF-uqgtJR5a5HRKF6jPXeqAmU4eAiQSwPSSeQ&s", name: "My Dog"),
  Pet(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSt1Gy6LZF-uqgtJR5a5HRKF6jPXeqAmU4eAiQSwPSSeQ&s", name: "My Dog"),
  Pet(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSt1Gy6LZF-uqgtJR5a5HRKF6jPXeqAmU4eAiQSwPSSeQ&s", name: "My Dog")
];