import 'package:flutter/material.dart';
import 'package:tarefa_dev/core/app_colors.dart';
import 'package:tarefa_dev/core/app_textstyles.dart';
import 'package:tarefa_dev/views/config/widgets/period_modal_widget.dart';
import 'package:tarefa_dev/widgets/buttons/basic_button_widget.dart';

class ConfigView extends StatelessWidget {
  const ConfigView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(21, 21, 21, 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Header
                  header(constraints),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    child: Divider(
                      color: AppColors.headerDivider,
                    ),
                  ),
                  body(constraints, context),
                ],
              ),
              //Bottom
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    height: 51,
                    width: 51,
                    margin: const EdgeInsets.only(right: 14),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "João",
                        style: AppTextStyles.inter16Medium
                            .copyWith(color: AppColors.linkText),
                      ),
                      Text(
                        "Sair",
                        style: AppTextStyles.inter13Medium.copyWith(
                          color: AppColors.linkText,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget header(BoxConstraints constraints) => Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 18,
                height: 18,
                child: IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    size: 18,
                    color: AppColors.icon,
                  ),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Text(
                "Configurações",
                style: AppTextStyles.inter20SemiBold,
              ),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Apelido",
                    style: AppTextStyles.inter11Medium
                        .copyWith(color: AppColors.headingText),
                  ),
                  const SizedBox(height: 4),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 2,
                        color: AppColors.headerStroke,
                      ),
                    ),
                    height: 31,
                    width: ((constraints.maxWidth) * 0.59) - 42,
                    child: Center(
                      child: TextField(
                        scrollPadding: EdgeInsets.zero,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 5,
                          ),
                          isDense: true,
                          border: InputBorder.none,
                          hintText: "",
                          hintStyle: AppTextStyles.inter12Medium
                              .copyWith(color: AppColors.disabledText),
                        ),
                        style: AppTextStyles.inter12Medium
                            .copyWith(color: AppColors.headingText),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: AppColors.headerBody,
                  borderRadius: BorderRadius.circular(9),
                ),
                width: ((constraints.maxWidth) * 0.41) - 12,
                child: Row(
                  children: [
                    Container(
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Text(
                      "Editar Foto",
                      style: AppTextStyles.inter12Medium
                          .copyWith(color: AppColors.headingText),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      );

  Widget body(BoxConstraints constraints, BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Períodos",
            style: AppTextStyles.inter14SemiBold
                .copyWith(color: AppColors.headingText),
          ),
          const SizedBox(height: 18),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.body,
                  borderRadius: BorderRadius.circular(15),
                ),
                height: constraints.maxHeight * 0.5,
                padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                child: SingleChildScrollView(
                  child: Wrap(
                    runSpacing: 8,
                    children: List.generate(
                      10,
                      (index) => Container(
                        margin: EdgeInsets.only(
                          top: index == 0 ? 24 : 0,
                        ),
                        height: 38,
                        width: constraints.maxWidth,
                        decoration: BoxDecoration(
                          color: AppColors.background,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              BasicButtonWidget(
                title: "Adicionar Período",
                onPressed: () => _dialogBuilder(
                  constraints,
                  context,
                ),
              ),
            ],
          ),
        ],
      );

  Future<void> _dialogBuilder(
      BoxConstraints constraints, BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (_) {
        return PeriodModalWidget(
          constraints: constraints,
          closeButtonOnTap: () {
            Navigator.pop(_);
          },
          primaryButtonOnTap: () {
            Navigator.pop(_);
          },
          secondaryButtonOnTap: () {
            Navigator.pop(_);
          },
        );
      },
    );
  }
}
