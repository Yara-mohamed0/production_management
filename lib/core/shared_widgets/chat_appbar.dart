import 'package:flutter/material.dart';

import '../theming/styles.dart';

class ChatDefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ChatDefaultAppBar(
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
        padding: const EdgeInsets.only(left: 18.0),
        child: IconButton(
          onPressed: onPressed ??
              () {
                Navigator.pop(context);
              },
          icon: Icon(
            icon ?? Icons.arrow_back_ios_new_outlined,
            color: iconColor,
          ),
        ),
      ),
      title: Row(
        children: [
          if (image != null) // Check if image is provided
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/user_image.png'),
              radius: 20,
            ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name ?? '',
                style: titleStyle ?? AppFonts.font16W700Primary,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                number ?? '',
                style: titleStyle ?? AppFonts.font12W700LightGrey,
              ),
            ],
          ),
        ],
      ),
      actions: action,
    );
  }
}
