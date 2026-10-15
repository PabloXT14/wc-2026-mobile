import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_ui/material_ui.dart';

import 'package:wc_2026_mobile/ui/core/shared/app_assets.dart';
import 'package:wc_2026_mobile/ui/core/shared/licensed_badge.dart';
import 'package:wc_2026_mobile/ui/core/shared/logo_card.dart';

import 'package:wc_2026_mobile/ui/core/theme/theme.dart';
import 'package:wc_2026_mobile/ui/splash/widgets/boot_bar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  // late: make the initialization of the variable lazy, so it will be initialized only when it is used for the first time
  late final _boot = AnimationController(
    vsync: this,
    duration: Duration(milliseconds: 2400),
  );

  @override
  void initState() {
    super.initState();
    _boot.forward().then((_) => _exitWhenReady());
  }

  @override
  void dispose() {
    _boot.dispose();
    super.dispose();
  }

  void _exitWhenReady() {
    if (!mounted || !_boot.isCompleted) return;

    // TODO: Call the redirect
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Redirect to the next screen'),
      ),
    );
  }

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
                        child: AnimatedBuilder(
                          animation: _boot,
                          builder: (_, _) {
                            return BootBar(progress: _boot.value);
                          },
                        ),
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
