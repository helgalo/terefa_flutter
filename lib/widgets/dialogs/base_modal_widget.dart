import 'package:flutter/material.dart';
import 'package:tarefa_dev/core/app_colors.dart';
import 'package:tarefa_dev/core/app_textstyles.dart';
import 'package:tarefa_dev/widgets/buttons/basic_button_widget.dart';

class BaseModalWidget extends StatelessWidget {
  final Widget body;
  final String title;
  final String primaryButtonTitle;
  final String secondaryButtonTitle;
  final Function()? primaryButtonOnTap;
  final Function()? secondaryButtonOnTap;
  final Function()? closeButtonOnTap;

  const BaseModalWidget({
    super.key,
    required this.title,
    required this.body,
    this.primaryButtonOnTap,
    this.secondaryButtonOnTap,
    this.primaryButtonTitle = "Done",
    this.secondaryButtonTitle = "Cancel",
    this.closeButtonOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.background,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            width: 18,
                            height: 18,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 66),
                            child: Text(
                              title,
                              style: AppTextStyles.inter12SemiBold,
                            ),
                          ),
                          SizedBox(
                            height: 18,
                            width: 18,
                            child: IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: closeButtonOnTap,
                              icon: Icon(
                                Icons.close,
                                size: 18,
                                color: AppColors.disabledText,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 31,
                      ),
                      body,
                      if (primaryButtonOnTap != null ||
                          secondaryButtonOnTap != null)
                        Column(
                          children: [
                            const SizedBox(
                              height: 43,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                if (primaryButtonOnTap != null)
                                  BasicButtonWidget(
                                    type: ButtonTypes.delete,
                                    onPressed: secondaryButtonOnTap == null
                                        ? primaryButtonOnTap ?? () {}
                                        : secondaryButtonOnTap ?? () {},
                                    title: secondaryButtonOnTap == null
                                        ? primaryButtonTitle
                                        : secondaryButtonTitle,
                                  ),
                                if (primaryButtonOnTap != null &&
                                    secondaryButtonOnTap != null)
                                  Padding(
                                    padding: const EdgeInsets.only(left: 59),
                                    child: BasicButtonWidget(
                                      onPressed: primaryButtonOnTap ?? () {},
                                      title: primaryButtonTitle,
                                      constraints: const BoxConstraints(
                                        minWidth: 89,
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
