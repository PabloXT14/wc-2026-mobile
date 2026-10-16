import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_ui/material_ui.dart';

import 'package:wc_2026_mobile/ui/core/shared/app_assets.dart';
import 'package:wc_2026_mobile/ui/core/shared/licensed_badge.dart';
import 'package:wc_2026_mobile/ui/core/shared/logo_card.dart';

import 'package:wc_2026_mobile/ui/core/theme/theme.dart';
import 'package:wc_2026_mobile/ui/welcome/widgets/stats_bar.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

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
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppDimensions.paddingHorizontal,
              ),
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

                  SizedBox(height: 20),

                  SizedBox(height: 72, child: StatsBar()),

                  SizedBox(height: 20),

                  FilledButton(
                    onPressed: () {},
                    child: Text('COMEÇAR A COLECIONAR →'),
                  ),

                  SizedBox(height: 18),

                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: AppColors.ink,
                      textStyle: AppTextStyles.body,

                      // 1. Remove o preenchimento interno padrão
                      padding: EdgeInsets.zero,
                      // 2. Reduz o tamanho do alvo de clique para o tamanho real do conteúdo
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      // 3. Opcional: Garante que a restrição de altura mínima seja zerada
                      minimumSize: Size.zero,
                    ),
                    onPressed: () {},
                    child: Text('Já tenho conta · Entrar'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
