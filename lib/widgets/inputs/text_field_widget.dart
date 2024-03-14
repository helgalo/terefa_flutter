import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tarefa_dev/core/app_colors.dart';
import 'package:tarefa_dev/core/app_textstyles.dart';

class InputTextFieldWidget extends StatelessWidget {
  final double? height;
  final double? width;
  final String? hintText;
  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormatters;
  final bool isObscure;

  const InputTextFieldWidget({
    super.key,
    this.controller,
    this.height,
    this.width,
    this.hintText,
    this.inputFormatters,
    this.isObscure = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 376),
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: AppColors.body,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              obscureText: isObscure,
              inputFormatters: inputFormatters,
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                isDense: true,
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: AppTextStyles.inter12Medium
                    .copyWith(color: AppColors.disabledText),
              ),
              controller: controller,
              style: AppTextStyles.inter12Medium
                  .copyWith(color: AppColors.headingText),
            ),
          ),
        ],
      ),
    );
  }
}
