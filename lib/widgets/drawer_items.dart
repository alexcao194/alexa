import 'package:flutter/material.dart' hide Badge;

import 'badge.dart';

class DrawerItems extends StatelessWidget {
  const DrawerItems({
    super.key,
    this.selected = false,
    this.number,
    required this.icon,
    required this.title,
    required this.onPressed,
  });

  final bool selected;
  final int? number;
  final IconData icon;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Material(
            color: (selected)
                ? Theme.of(context).primaryColor
                : Colors.transparent,
            child: InkWell(
              onTap: onPressed,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      icon,
                      color: (selected)
                          ? Colors.white
                          : Theme.of(context).iconTheme.color,
                    ),
                    SizedBox(width: 16),
                    Text(
                      title,
                      style:
                          Theme.of(context).textTheme.bodyMedium?.copyWith(
                                color: (selected)
                                    ? Colors.white
                                    : Colors.black.withOpacity(0.5),
                              ),
                    ),
                    Spacer(),
                    if (number != null) Badge(number: number!)
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 2),
        Divider(),
        const SizedBox(height: 2),
      ],
    );
  }
}
