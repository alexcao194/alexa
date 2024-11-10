import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sellar_e_commerce/blocs/auth/auth_bloc.dart';

import '../blocs/home/home_bloc.dart';
import '../pages/account_page.dart';
import '../pages/card_page.dart';
import '../pages/shipping_page.dart';
import '../pages/shopping_page.dart';
import '../responsive_layout.dart';
import '../widgets/e_com_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        return AccountPage();
      case 1:
        return ShoppingPage();
      case 2:
        return CartPage();
      case 3:
        return Center(
          child: Text("Orders"),
        );
      case 4:
        return Center(
          child: ShippingPage(),
        );
      default:
        return Center(
          child: Text("???"),
        );
    }
  }

  @override
  void initState() {
    super.initState();
    context.read<AuthBloc>().add(const AuthEvent.listenToAuthChanges());
  }
}
