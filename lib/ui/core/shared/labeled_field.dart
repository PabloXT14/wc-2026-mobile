import 'package:material_ui/material_ui.dart';
import 'package:wc_2026_mobile/ui/core/shared/required_text.dart';

class LabeledField({
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
  @override
  State<LabeledField> createState() => _LabeledFieldState();
}

class _LabeledFieldState extends State<LabeledField> {
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
        TextFormField(
          controller: widget.controller,
          validator: widget.validator,
          autovalidateMode: widget.autovalidateMode,
          keyboardType: widget.keyboardType,
          textInputAction: widget.textInputAction,
          textCapitalization: widget.textCapitalization,
          obscureText: widget.obscureText,

          decoration: InputDecoration(
            hintText: widget.hintText,
          ),
        ),
      ],
    );
  }
}
