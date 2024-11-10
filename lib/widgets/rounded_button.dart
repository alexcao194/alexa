import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;

  const RoundedButton({super.key, required this.child, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        padding: WidgetStateProperty.all(
          EdgeInsets.symmetric(vertical: 20),
        ),
        overlayColor: WidgetStateProperty.all(Theme.of(context).primaryColor.withOpacity(0.1)),
        backgroundColor: WidgetStateProperty.all(Theme.of(context).secondaryHeaderColor),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: child,
      ),
    );
  }
}
