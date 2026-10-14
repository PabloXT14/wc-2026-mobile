import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_ui/material_ui.dart';

import 'package:wc_2026_mobile/ui/core/shared/app_assets.dart';
import 'package:wc_2026_mobile/ui/core/shared/licensed_badge.dart';
import 'package:wc_2026_mobile/ui/core/shared/logo_card.dart';

import 'package:wc_2026_mobile/ui/core/theme/theme.dart';
import 'package:wc_2026_mobile/ui/splash/widgets/boot_bar.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset(
            AppAssets.patterns.paniniArcSplashSvg,
            fit: BoxFit.cover,
          ),

          ColoredBox(color: AppColors.cream500.withValues(alpha: 0.35)),

          // CONTENT
          Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: .center,

                  children: [
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: 290,
                      ),
                      child: LicensedBadge(),
                    ),

                    SizedBox(height: 40),

                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: 290,
                        maxHeight: 380,
                      ),
                      child: LogoCard(),
                    ),

                    SizedBox(height: 36),

                    Text(
                      "SEU ÁLBUM",
                      style: AppTextStyles.display,
                    ),

                    SizedBox(height: 2),

                    Text(
                      "OFICIAL",
                      style: AppTextStyles.display.copyWith(
                        color: AppColors.red500,
                      ),
                    ),

                    SizedBox(height: 40),

                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: 290,
                      ),
                      child: SizedBox(
                        height: 72,
                        child: BootBar(progress: 0.5),
                      ),
                    ),
                  ],
                ),
              ),

              Text('V1.0.0 - Fifa World Cup 26', style: AppTextStyles.overline),
              SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }
}
