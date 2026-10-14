import 'package:flutter/widgets.dart';
import 'package:wc_2026_mobile/ui/core/shared/app_assets.dart';
import 'package:wc_2026_mobile/ui/core/theme/theme.dart';

class LogoCard extends StatelessWidget {
  const LogoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: AppDimensions.borderRadiusLg,
        boxShadow: AppShadows.lg,
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              width: 10,
              height: 10,
              child: _CornerMark(0),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: SizedBox(
              width: 10,
              height: 10,
              child: _CornerMark(1),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: SizedBox(
              width: 10,
              height: 10,
              child: _CornerMark(3),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
              width: 10,
              height: 10,
              child: _CornerMark(2),
            ),
          ),

          // CONTENT
          Column(
            children: [
              SizedBox(height: 20),
              Text("— FIFA WORLD CUP 26™ —", style: AppTextStyles.overline),
              SizedBox(height: 4),
              Text(
                "PANINI STICKER ALBUM",
                style: AppTextStyles.overline.copyWith(
                  color: (AppColors.gray600),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                width: 140,
                child: Image.asset(
                  AppAssets.images.logoFifaWc2026,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              Text("USA  ·  CANADÁ  ·  MÉXICO", style: AppTextStyles.overline),
              SizedBox(height: 12),
              Text(
                "11 JUN — 19 JUL 2026",
                style: AppTextStyles.overline.copyWith(
                  color: (AppColors.gray600),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _CornerMark(final int quarterTurns) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: quarterTurns,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: AppColors.ink,
              width: 1.5,
            ),
            left: BorderSide(
              color: AppColors.ink,
              width: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}
