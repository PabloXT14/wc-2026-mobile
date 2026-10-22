import 'package:flutter/widgets.dart';
import 'package:wc_2026_mobile/ui/core/shared/app_assets.dart';
import 'package:wc_2026_mobile/ui/core/theme/theme.dart';

class Emblem extends StatelessWidget {
  const Emblem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 88,
      height: 88,
      alignment: Alignment.center,
      decoration: ShapeDecoration(
        shape: CircleBorder(),
        color: AppColors.white,
        shadows: AppShadows.md,
      ),
      child: SizedBox(
        width: 54,
        height: 68,
        child: Image.asset(
          AppAssets.images.logoFifaWc2026,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
