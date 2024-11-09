import 'package:flutter/material.dart';

class TopBarDescription extends StatelessWidget {
  const TopBarDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          /*  if (ResponsiveLayout.isIphone(context)) BackButton(),
          if (ResponsiveLayout.isMacbook(context))
            IconButton(
              icon: Icon(
                Icons.print_outlined,
                color: Theme.of(context).iconTheme.color,
              ),
              onPressed: () {},
            ), */
          Spacer(),
          ConstrainedBox(
            constraints: BoxConstraints.tightFor(
              width: 100,
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
                  backgroundColor: WidgetStateProperty.all(Theme.of(context).secondaryHeaderColor)),
              child: Text(
                "Add to Cart",
                style: TextStyle(color: Colors.black.withOpacity(0.8)),
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(width: 20),
          ConstrainedBox(
            constraints: BoxConstraints.tightFor(
              width: 100,
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
                  backgroundColor: WidgetStateProperty.all(Theme.of(context).primaryColor)),
              child: Text(
                "Buy Now",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
