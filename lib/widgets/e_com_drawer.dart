import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/home/home_bloc.dart';
import '../generared/assets.dart';
import 'drawer_items.dart';

class ECommerceDrawer extends StatelessWidget {
  const ECommerceDrawer({super.key});

  static const List<String> labels = [
    "Account",
    "Shopping",
    "Orders",
    "Shipping",
  ];

  static const List<IconData> icons = [
    Icons.account_box_rounded,
    Icons.shop_rounded,
    Icons.newspaper,
    Icons.cable_rounded,
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Container(
          height: double.infinity,
          padding: EdgeInsets.only(top: kIsWeb ? 20 : 0),
          color: Theme.of(context).secondaryHeaderColor,
          child: SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Text(
                    "Alexa",
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  SizedBox(height: 20),
                  ConstrainedBox(
                    constraints: BoxConstraints.tightFor(
                      width: 300,
                    ),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          padding: WidgetStateProperty.all(
                            EdgeInsets.symmetric(vertical: 20),
                          ),
                          backgroundColor: WidgetStateProperty.all(Colors.white.withOpacity(0.8))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            Assets.pngGoogle,
                            width: 20,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            "Sign In with Google",
                            style: TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(height: 40),
                  ...List.generate(
                    labels.length,
                    (index) => DrawerItems(
                      onPressed: () => _onChangeTab(context, index),
                      title: labels[index],
                      icon: icons[index],
                      selected: index == state.selectedTab,
                    ),
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  _onChangeTab(BuildContext context, int index) {
    BlocProvider.of<HomeBloc>(context).add(HomeEvent.changeTab(index));
  }
}
