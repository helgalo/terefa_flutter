import 'package:flutter/material.dart';
import 'package:tarefa_dev/core/app_colors.dart';
import 'package:tarefa_dev/views/config/widgets/modal_textfield_widget.dart';
import 'package:tarefa_dev/widgets/dialogs/base_modal_widget.dart';
import 'package:tarefa_dev/widgets/inputs/text_field_widget.dart';

class PeriodModalWidget extends StatelessWidget {
  final BoxConstraints constraints;
  final Function() primaryButtonOnTap;
  final Function() secondaryButtonOnTap;
  final Function() closeButtonOnTap;
  const PeriodModalWidget({
    super.key,
    required this.constraints,
    required this.primaryButtonOnTap,
    required this.secondaryButtonOnTap,
    required this.closeButtonOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return BaseModalWidget(
      title: "Novo período",
      closeButtonOnTap: closeButtonOnTap,
      body: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: constraints.maxWidth * 0.75),
        child: Column(
          children: [
            const InputTextFieldWidget(
              hintText: "Nomeie seu período",
            ),
            const SizedBox(
              height: 18,
            ),
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: AppColors.body,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                children: [
                  ModalTextFieldWidget(
                    text: "4 de set. de 2023",
                    title: "Começa",
                  ),
                  ModalTextFieldWidget(
                    text: "4 de set. de 2023",
                    title: "Termina",
                  ),
                  ModalTextFieldWidget(
                    text: "4 de set. de 2023",
                    title: "Categoria",
                    hasDivider: false,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 22),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  ModalTextFieldWidget(
                    text: "4 de set. de 2023",
                    title: "Meta 1",
                    hasDivider: false,
                    formFieldWidth: 64,
                    hintText: "Un",
                  ),
                  const SizedBox(height: 20),
                  ModalTextFieldWidget(
                    text: "4 de set. de 2023",
                    title: "Meta 2",
                    hasDivider: false,
                    formFieldWidth: 64,
                    hintText: "Un",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      primaryButtonOnTap: primaryButtonOnTap,
      secondaryButtonOnTap: secondaryButtonOnTap,
    );
  }
}
