import 'package:flutter/cupertino.dart';
import 'package:tarefa_dev/core/app_colors.dart';
import 'package:tarefa_dev/core/app_textstyles.dart';

class BasicButtonWidget extends StatelessWidget {
  final String title;
  final ButtonTypes type;
  final Function() onPressed;
  final BoxConstraints? constraints;

  const BasicButtonWidget({
    super.key,
    required this.onPressed,
    required this.title,
    this.type = ButtonTypes.primary,
    this.constraints = const BoxConstraints(minWidth: 89),
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            constraints: constraints,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 12),
            decoration: BoxDecoration(
              color: type.theme.color,
              borderRadius: BorderRadius.circular(15),
            ),
            padding: const EdgeInsets.all(6),
            child: Text(
              title,
              style: type.theme.style,
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonTheme {
  final TextStyle style;
  final Color color;

  ButtonTheme({
    required this.style,
    required this.color,
  });
}

enum ButtonTypes {
  primary,
  delete,
}

extension ButtonTypesExtension on ButtonTypes {
  String get description => name;

  ButtonTheme get theme {
    switch (this) {
      case ButtonTypes.primary:
        return ButtonTheme(
            style: AppTextStyles.inter10SemiBold
                .copyWith(color: AppColors.buttonText),
            color: AppColors.blue);
      case ButtonTypes.delete:
        return ButtonTheme(
            style: AppTextStyles.inter10SemiBold
                .copyWith(color: AppColors.buttonText),
            color: AppColors.delete);
    }
  }
}
