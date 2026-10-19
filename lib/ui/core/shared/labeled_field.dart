import 'package:material_ui/material_ui.dart';
import 'package:wc_2026_mobile/ui/core/shared/required_text.dart';
import 'package:wc_2026_mobile/ui/core/theme/theme.dart';

class const LabeledField({
  super.key,
  required final String label,
  final String? hintText,
  final TextInputType? keyboardType,
  final TextEditingController? controller,
  final FormFieldValidator<String>? validator,
  final TextInputAction? textInputAction,
  final TextCapitalization textCapitalization = TextCapitalization.none,
  final bool obscureText = false,
  final bool required = false,
  final AutovalidateMode autovalidateMode = AutovalidateMode.onUserInteraction,
}) extends StatefulWidget {
  const LabeledField.password({
    required String label,
    required String hintText,
    TextEditingController? controller,
    FormFieldValidator<String>? validator,
    TextInputAction? textInputAction,
    bool required = false,
    AutovalidateMode autovalidateMode = AutovalidateMode.onUserInteraction,
    Key? key,
  }) : this(
         label: label,
         hintText: hintText,
         controller: controller,
         validator: validator,
         textInputAction: textInputAction,
         required: required,
         autovalidateMode: autovalidateMode,
         obscureText: true,
         key: key,
       );

  @override
  State<LabeledField> createState() => _LabeledFieldState();
}

class _LabeledFieldState extends State<LabeledField> {
  late final _obscured = ValueNotifier<bool>(widget.obscureText);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 6,
      children: [
        RequiredText(
          text: widget.label,
          isRequired: widget.required,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        ValueListenableBuilder(
          valueListenable: _obscured,
          builder: (context, value, child) {
            return TextFormField(
              controller: widget.controller,
              validator: widget.validator,
              autovalidateMode: widget.autovalidateMode,
              keyboardType: widget.keyboardType,
              textInputAction: widget.textInputAction,
              textCapitalization: widget.textCapitalization,
              obscureText: value,

              decoration: InputDecoration(
                hintText: widget.hintText,
                suffixIcon: widget.obscureText
                    ? IconButton(
                        icon: Icon(
                          value
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          size: 18,
                          color: AppColors.gray600,
                        ),
                        tooltip: value ? 'Mostrar senha' : 'Ocultar senha',
                        onPressed: () {
                          _obscured.value = !value;
                        },
                      )
                    : null,
              ),
            );
          },
        ),
      ],
    );
  }
}
