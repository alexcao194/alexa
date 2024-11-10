import 'package:flutter/material.dart';

import '../generared/assets.dart';
import 'top_bar_description.dart';

class ECommerceItemDescription extends StatelessWidget {
  const ECommerceItemDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Column(
            children: [
              TopBarDescription(),
              Divider(thickness: 1),
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        maxRadius: 24,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage(Assets.pngSwitchLogo),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text.rich(
                                        TextSpan(
                                          text: "Sellar  ",
                                          style: Theme.of(context).textTheme.bodyMedium,
                                          children: [
                                            TextSpan(text: "Platinum Member", style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black.withOpacity(0.5))),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        "Nintendo Switch",
                                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 20),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10),
                                Text("\$ 298", style: TextStyle(fontSize: 20)),
                              ],
                            ),
                            SizedBox(height: 20),
                            LayoutBuilder(
                              builder: (context, constraints) => SizedBox(
                                width: constraints.maxWidth > 840 ? 800 : constraints.maxWidth,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Column(
                                          children: List.generate(
                                            3,
                                            (index) => Container(
                                              height: 100,
                                              width: 100,
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(8),
                                                child: Image.asset(
                                                  "assets/jpg/switch_$index.jpg",
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 60),
                                        if (constraints.maxWidth > 300)
                                          Container(
                                            width: constraints.maxWidth > 840 ? 600 : constraints.maxWidth - 200,
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(8),
                                              child: Image.asset(
                                                Assets.jpgSwitch2,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                    Divider(thickness: 1),
                                    SizedBox(height: 10),
                                    Text(
                                      "Three modes in one \n \nNintendo Switch is designed to fit your life, transforming from home console to portable system in a snap. \n\nDock your Nintendo Switch to enjoy HD gaming on your TV. \n\nFlip the stand to share the screen, then share the fun with a multiplayer game.\n\nPick it up and play with the Joy‑Con™ controllers attached.",
                                      style: TextStyle(
                                        color: Colors.black.withOpacity(0.9),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Spacer(),
                                        Text("Reviews (33) ", style: TextStyle(fontSize: 15)),
                                        Icon(Icons.star_rounded, color: Theme.of(context).primaryColor),
                                        Icon(Icons.star_rounded, color: Theme.of(context).primaryColor),
                                        Icon(Icons.star_rounded, color: Theme.of(context).primaryColor),
                                        Icon(Icons.star_rounded, color: Theme.of(context).primaryColor),
                                        Icon(Icons.star_outline_rounded, color: Theme.of(context).primaryColor),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
