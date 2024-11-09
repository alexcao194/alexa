class Item {
  final String image, title;
  final int amount, uid;
  Item({
    required this.uid,
    required this.image,
    required this.title,
    required this.amount,
  });
}

List<Item> products = [
  Item(
    uid: 1,
    title: "PS5 Controller",
    amount: 75,
    image: "images/ps5.png",
  ),
  Item(
    uid: 2,
    title: "Drone",
    amount: 155,
    image: "images/drone.png",
  ),
  Item(
    uid: 3,
    title: "Beats Studio",
    amount: 230,
    image: "images/beats.png",
  ),
  Item(
    uid: 4,
    title: "Alexa",
    amount: 45,
    image: "images/alexa.png",
  ),
  Item(
    uid: 5,
    title: "Nintendo Switch",
    amount: 298,
    image: "images/switch.png",
  ),
  Item(
    uid: 6,
    title: "Apple Watch",
    amount: 165,
    image: "images/watch.png",
  ),
  Item(
    uid: 7,
    title: "Macbook",
    amount: 1950,
    image: "images/mac.png",
  ),
  Item(
    uid: 8,
    title: "Iphone",
    amount: 1200,
    image: "images/iphone.png",
  ),
];
