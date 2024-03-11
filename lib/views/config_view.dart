import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tarefa_dev/core/app_colors.dart';
import 'package:tarefa_dev/core/app_textstyles.dart';

class ConfigView extends StatelessWidget {
  const ConfigView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Column(
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
              body(constraints),
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
                    width: ((constraints.maxWidth) * 0.59) - 12,
                    child: Center(
                      child: TextField(
                        scrollPadding: EdgeInsets.zero,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 5,
                          ),
                          isDense: true,
                          border: InputBorder.none,
                          hintText: "widget.hintText",
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
                width: (constraints.maxWidth) * 0.41,
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

  Widget body(BoxConstraints constraints) => Column(
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
              Container(
                margin: const EdgeInsets.only(top: 12),
                decoration: BoxDecoration(
                  color: AppColors.blue,
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.all(6),
                child: Text(
                  "Adicionar Período",
                  style: AppTextStyles.inter10SemiBold
                      .copyWith(color: AppColors.buttonText),
                ),
              ),
            ],
          ),
        ],
      );
}
