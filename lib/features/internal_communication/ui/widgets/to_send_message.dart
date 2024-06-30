import 'package:flutter/material.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';

class ToSendMessage extends StatelessWidget {
  const ToSendMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          _buildEmojiButton(),
          const SizedBox(width: 5),
          Expanded(
            child: _buildMessageTextField(),
          ),
          const SizedBox(width: 5),
          _buildAttachmentButton(),
          const SizedBox(width: 5),

          _buildSendButton(),
        ],
      ),
    );
  }

  Widget _buildMessageTextField() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'اكتب رسالتك...',
          hintStyle: AppFonts.font12W600Grey,
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          border: InputBorder.none,
        ),
        style: AppFonts.font16W400Black,
      ),
    );
  }

  Widget _buildIconButton(IconData icon, {required VoidCallback onPressed, required Color color}) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        icon,
        color: color,
      ),
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(),
    );
  }

  Widget _buildEmojiButton() {
    return _buildIconButton(
      Icons.emoji_emotions_outlined,
      onPressed: () {},
      color: AppColors.greyColor,
    );
  }

  Widget _buildAttachmentButton() {
    return _buildIconButton(
      Icons.attach_file_outlined,
      onPressed: () {},
      color: AppColors.greyColor,
    );
  }

  Widget _buildSendButton() {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: AppColors.mainColor,
      elevation: 2,
      child: const Icon(
        Icons.send,
        color: AppColors.whiteColor,
      ),
    );
  }
}
