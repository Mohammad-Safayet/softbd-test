import 'package:flutter/material.dart';

class HeadingButton extends StatelessWidget {
  const HeadingButton({
    Key? key,
    required this.title,
    required this.iconString,
    required this.onClick,
    required this.isActive,
  }) : super(key: key);

  final String title;
  final String iconString;
  final Function onClick;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onClick();
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.25,
        height: MediaQuery.of(context).size.height * 0.15,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            15.0,
          ),
          color: isActive ? Colors.pinkAccent : Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ImageIcon(
              AssetImage(iconString),
              size: 48.0,
              color: !isActive ? Colors.pinkAccent : Colors.white,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),
      ),
    );
  }
}
