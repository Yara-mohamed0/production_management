import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class QualityControl extends StatelessWidget {
  const QualityControl({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.mainColor),
        borderRadius: BorderRadius.circular(12),
        color: AppColors.lightGreen,
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              'قائمة مراقبة الجودة',
              style: AppFonts.font20W700Primary,
            ),
          ),
          const SizedBox(height: 23,),
          Text(
            'مستويات الجودة',
            style: AppFonts.font20W700Primary,
          ),
          const SizedBox(height: 16.0),
          const QualityLevelItem(text: 'هناك حقيقة مثبتة منذ زمن طويل'),
          const QualityLevelItem(text: 'هناك حقيقة مثبتة منذ زمن طويل'),
          const QualityLevelItem(text: 'هناك حقيقة مثبتة منذ زمن طويل'),
          const QualityLevelItem(text: 'هناك حقيقة مثبتة منذ زمن طويل'),
          const SizedBox(height: 24.0),
          Text(
            'تحذيرات الجودة',
            style: AppFonts.font20W700Primary,
          ),
          const SizedBox(height: 16.0),
          const QualityWarningItem(text: 'تحليل السبب الجذري'),
          const QualityWarningItem(text: 'اختبارات الجودة المعيارية'),
          const QualityWarningItem(text: 'تقارير عدم المطابقة'),
          const QualityWarningItem(text: 'برامج تدريب الموظفين'),
        ],
      ),
    );
  }
}

class QualityLevelItem extends StatelessWidget {
  final String text;

  const QualityLevelItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text('-$text',style: AppFonts.font16W400TextColor,),
    );
  }
}

class QualityWarningItem extends StatelessWidget {
  final String text;

  const QualityWarningItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text('-$text',style: AppFonts.font16W400TextColor,),
    );
  }
}
