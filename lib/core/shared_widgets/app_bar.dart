import 'package:flutter/material.dart';

import '../theming/colors.dart';
import '../theming/styles.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DefaultAppBar(
      {super.key,
      this.isCenter,
      this.icon,
      this.name,
      this.image, // Add this parameter
      this.action,
      this.backgroundColor,
      this.iconColor,
      this.titleStyle,
      this.bottom,
      this.onPressed,
      this.number});

  final bool? isCenter;
  final IconData? icon;
  final String? name;
  final String? number;
  final String? image; // Add this parameter
  final List<Widget>? action;
  final Color? backgroundColor;
  final Color? iconColor;
  final TextStyle? titleStyle;
  final PreferredSizeWidget? bottom;
  final VoidCallback? onPressed;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottom: bottom,
      backgroundColor: backgroundColor,
      centerTitle: isCenter,
      leading: Padding(
          padding:
              const EdgeInsets.only(left: 10.0, top: 8, right: 8, bottom: 8),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
                decoration:  BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.whiteColor,
                  border: Border.all(color: AppColors.lightGrey)
                ),
                child: const Icon(
                  Icons.arrow_back,
                  color: AppColors.mainColor,
                )),
          )),
      title: Text(
        name ?? '',
        style: titleStyle ?? AppFonts.font20W700Primary,
      ),
      actions: action,
    );
  }
}
