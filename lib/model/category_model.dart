class CategoryModel {
  final String image;
  final String title;
  final String subtitle;

  CategoryModel({
    this.image,
    this.title,
    this.subtitle
  });
}

List<CategoryModel> dataDummy = [
  CategoryModel(
    image: "assets/images/air_transmission.png",
    title: "Air Transmision",
    subtitle: "Cough / Sneeze"
  ),
  CategoryModel(
    image: "assets/images/human_contact.png",
    title: "Human Contact",
    subtitle: "Handshaking"
  ),
  CategoryModel(
    image: "assets/images/object_sustanse.png",
    title: "Object Sustanse",
    subtitle: "Handshaking"
  ),
];
