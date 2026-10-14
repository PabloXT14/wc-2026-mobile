import 'package:flutter/widgets.dart';
import 'package:wc_2026_mobile/ui/core/theme/theme.dart';

class LicensedBadge extends StatelessWidget {
  const LicensedBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: ShapeDecoration(
        color: AppColors.ink,
        shape: StadiumBorder(),
      ),
      child: Center(
        child: Text(
          "★  OFFICIAL LICENSED PRODUCT  ★",
          style: AppTextStyles.overline.copyWith(color: AppColors.cream500),
        ),
      ),
    );
  }
}
