import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/home/home_bloc.dart';
import '../pages/shopping_page.dart';
import '../responsive_layout.dart';
import '../widgets/e_com_drawer.dart';
import '../widgets/e_com_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Scaffold(
          body: ResponsiveLayout(
            iphone: _getPage(state.selectedTab),
            ipad: _getPage(state.selectedTab),
            macbook: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: _getPage(state.selectedTab),
                ),
                Expanded(
                  child: ECommerceDrawer(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _getPage(index) {
    switch (index) {
      case 0:
        return Center(
          child: Text("Account"),
        );
      case 1:
        return ShoppingPage();
      case 2:
        return Center(
          child: Text("Orders"),
        );
      case 3:
        return Center(
          child: Text("Shipping"),
        );
      default:
        return Center(
          child: Text("???"),
        );
    }
  }
}