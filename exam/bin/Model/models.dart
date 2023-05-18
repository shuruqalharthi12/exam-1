class Infos {
  int? id;
  String? address;
  String? name;
  int? age;
  String? image;

  Infos({
    this.id,
    this.address,
    this.name,
    this.age,
    this.image,
  });

  factory Infos.fromJson({required Map json}) {
    return Infos(
        id: json['id'],
        name: json['name'],
        address: json['adress'],
        age: json['age'],
        image: json['image']);
  }

  toMap() {
    return {
      "id": id,
      "adress": address,
      "name": name,
      "age": age,
      "image": image,
    };
  }
}
