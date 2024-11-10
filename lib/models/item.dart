import '../generared/assets.dart';

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
    image: Assets.pngPs5,
  ),
  Item(
    uid: 2,
    title: "Drone",
    amount: 155,
    image: Assets.pngDrone,
  ),
  Item(
    uid: 3,
    title: "Beats Studio",
    amount: 230,
    image: Assets.pngBeats,
  ),
  Item(
    uid: 4,
    title: "Alexa",
    amount: 45,
    image: Assets.pngAlexa,
  ),
  Item(
    uid: 5,
    title: "Nintendo Switch",
    amount: 298,
    image: Assets.pngSwitch,
  ),
  Item(
    uid: 6,
    title: "Apple Watch",
    amount: 165,
    image: Assets.pngWatch,
  ),
  Item(
    uid: 7,
    title: "Macbook",
    amount: 1950,
    image: Assets.pngMac,
  ),
  Item(
    uid: 8,
    title: "Iphone",
    amount: 1200,
    image: Assets.pngIphone,
  ),
];
