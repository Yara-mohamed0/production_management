import 'package:flutter/material.dart';

import '../../../../../core/shared_widgets/default_text_form_field.dart';
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
          Expanded(
            child: _buildMessageTextField(),
          ),
          const SizedBox(width: 5),
          _buildVoiceInputButton(),
          const SizedBox(width: 5),
          _buildSendButton(),
        ],
      ),
    );
  }

  Widget _buildMessageTextField() {
    return DefaultTextFormField(

      hintText: 'اكتب رسالتك...',
      hintStyle: AppFonts.font12W600Grey,
      filled: true,
      isPassword: false,
      color: AppColors.onboardingGrey,
      readOnly: false,
      style: AppFonts.font16W400Black,
      borderSide: BorderSide.none,
      prefixIcon: Row(
        mainAxisSize: MainAxisSize.min, // Prevent unnecessary spacing
        children: [
          _buildIconButton(Icons.emoji_emotions_outlined, onPressed: () {}),
        ],
      ),
    );
  }

  Widget _buildIconButton(IconData icon, {required VoidCallback onPressed}) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        icon,
        color: AppColors.greyColor,
      ),
      padding: EdgeInsets.zero, // Remove default padding
      constraints: const BoxConstraints(), // Remove default constraints
    );
  }

  Widget _buildVoiceInputButton() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.onboardingGrey,
        borderRadius: BorderRadius.circular(30),
      ),
      child:  IconButton(
        onPressed: (){},
        icon: const Icon(
          Icons.attach_file_outlined,
          color: AppColors.greyColor,
          size: 28,
        ),
      ),
    );
  }

  Widget _buildSendButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.send,
          color: AppColors.mainColor,
          size: 30,
        ),
      ),
    );
  }
}
