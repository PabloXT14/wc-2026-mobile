import 'package:material_ui/material_ui.dart';
import 'package:wc_2026_mobile/ui/core/theme/theme.dart';

class RequiredText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final bool isRequired;

  const RequiredText({
    super.key,
    required this.text,
    this.style,
    this.isRequired = true,
  });

  @override
  Widget build(BuildContext context) {
    if (!isRequired) {
      return Text(text, style: style);
    }

    return Text.rich(
      TextSpan(
        text: text,
        children: const [
          TextSpan(
            text: ' *',
            style: TextStyle(color: AppColors.red500),
          ),
        ],
        style: style,
      ),
    );
  }
}
