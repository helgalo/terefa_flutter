import 'package:flutter/material.dart';
import 'package:tarefa_dev/core/app_colors.dart';
import 'package:tarefa_dev/core/app_textstyles.dart';

class ModalTextFieldWidget extends StatelessWidget {
  final String title;
  final String text;
  final bool hasDivider;
  final double formFieldWidth;
  final String? hintText;
  const ModalTextFieldWidget({
    super.key,
    required this.title,
    required this.text,
    this.hasDivider = true,
    this.formFieldWidth = 103,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: AppTextStyles.inter12Medium.copyWith(
                color: AppColors.headingText,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: AppColors.background,
                borderRadius: BorderRadius.circular(7),
                border: Border.all(
                  width: 1,
                  color: AppColors.headerStroke,
                ),
              ),
              height: 31,
              width: formFieldWidth,
              child: Center(
                child: TextField(
                  scrollPadding: EdgeInsets.zero,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    isDense: true,
                    border: InputBorder.none,
                    hintText: hintText,
                    hintStyle: AppTextStyles.inter12Medium
                        .copyWith(color: AppColors.disabledText),
                  ),
                  style: AppTextStyles.inter12Medium
                      .copyWith(color: AppColors.headingText),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
        if (hasDivider)
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Divider(height: 1),
          ),
      ],
    );
  }
}
