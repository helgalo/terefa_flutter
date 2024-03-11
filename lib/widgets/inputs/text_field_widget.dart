import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tarefa_dev/core/app_colors.dart';
import 'package:tarefa_dev/core/app_textstyles.dart';

class InputTextFieldWidget extends StatefulWidget {
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
  State<InputTextFieldWidget> createState() => _InputTextFieldWidgetState();
}

class _InputTextFieldWidgetState extends State<InputTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 376),
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        color: AppColors.body,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              obscureText: widget.isObscure,
              inputFormatters: widget.inputFormatters,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(19),
                isDense: true,
                border: InputBorder.none,
                hintText: widget.hintText,
                hintStyle: AppTextStyles.inter12Medium
                    .copyWith(color: AppColors.disabledText),
              ),
              controller: widget.controller,
              style: AppTextStyles.inter12Medium
                  .copyWith(color: AppColors.headingText),
            ),
          ),
        ],
      ),
    );
  }
}
