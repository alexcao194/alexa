import 'package:flutter/material.dart';
import 'package:sellar_e_commerce/responsive_layout.dart';

import '../generared/assets.dart';
import '../models/item.dart';
import 'e_com_drawer.dart';
import 'e_com_item_description.dart';
import 'categories.dart';

import 'package:flutter/foundation.dart' show kIsWeb;

import 'e_commerce_item.dart';

class ECommerceItems extends StatefulWidget {
  const ECommerceItems({super.key});

  @override
  State<ECommerceItems> createState() => _ECommerceItemsState();
}

class _ECommerceItemsState extends State<ECommerceItems> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  List<Item> products = [
    Item(
      id: 1,
      name: "PS5 Controller",
      amount: 75,
      image: Assets.pngPs5,
    ),
    Item(
      id: 2,
      name: "Drone",
      amount: 155,
      image: Assets.pngDrone,
    ),
    Item(
      id: 3,
      name: "Beats Studio",
      amount: 230,
      image: Assets.pngBeats,
    ),
    Item(
      id: 4,
      name: "Alexa",
      amount: 45,
      image: Assets.pngAlexa,
    ),
    Item(
      id: 5,
      name: "Nintendo Switch",
      amount: 298,
      image: Assets.pngSwitch,
    ),
    Item(
      id: 6,
      name: "Apple Watch",
      amount: 165,
      image: Assets.pngWatch,
    ),
    Item(
      id: 7,
      name: "Macbook",
      amount: 1950,
      image: Assets.pngMac,
    ),
    Item(
      id: 8,
      name: "Iphone",
      amount: 1200,
      image: Assets.pngIphone,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      drawer: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 250),
        child: ECommerceDrawer(),
      ),
      body: Container(
        padding: EdgeInsets.only(top: kIsWeb ? 20 : 0),
        color: Theme.of(context).secondaryHeaderColor,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  SizedBox(width: 20),
                  size.width >= ResponsiveLayout.ipadLimit ? IconButton(
                    icon: Icon(
                      Icons.shopping_bag_outlined,
                      color: Theme.of(context).primaryColor,
                    ),
                    onPressed: () {},
                  ) : IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: Theme.of(context).primaryColor,
                    ),
                    onPressed: () {
                      _scaffoldKey.currentState?.openDrawer();
                    },
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          hintText: "Search",
                          fillColor: Colors.white.withOpacity(0.5),
                          filled: true,
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Icon(Icons.search),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  /*  if (!ResponsiveLayout.isMacbook(context))
                    IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {
                        _scaffoldKey.currentState.openEndDrawer();
                      },
                    ), */
                  SizedBox(width: 10)
                ],
              ),
              Categories(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GridView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    itemCount: products.length,
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      childAspectRatio: 0.75,
                    ),
                    itemBuilder: (context, index) => ECommerceItem(
                      /*  selected: ResponsiveLayout.isIphone(context)
                          ? false
                          : index == 0, */
                      item: products[index],
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ECommerceItemDescription(),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
