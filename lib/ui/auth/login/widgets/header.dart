import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wc_2026_mobile/ui/core/shared/app_assets.dart';
import 'package:wc_2026_mobile/ui/core/theme/theme.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 320,
      child: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset(
            AppAssets.patterns.paniniArcHeaderLoginSvg,
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),

          // BOTTOM GRADIENT
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColors.cream500.withValues(alpha: 0),
                    AppColors.cream500,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
