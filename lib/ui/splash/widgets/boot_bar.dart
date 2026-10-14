import 'package:material_ui/material_ui.dart';
import 'package:wc_2026_mobile/ui/core/theme/theme.dart';

class BootBar extends StatelessWidget {
  final double progress;

  const BootBar({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: AppColors.ink,
        borderRadius: AppDimensions.borderRadiusMd,
      ),
      child: Column(
        mainAxisAlignment: .center,
        spacing: 16,
        children: [
          Padding(
            padding: .symmetric(horizontal: 45),
            child: LinearProgressIndicator(
              value: progress,
              minHeight: 6,
              borderRadius: .circular(3),
              backgroundColor: AppColors.white,
              color: AppColors.yellow500,
            ),
          ),
          Text(
            "PREPARANDO SEU ÁLBUM…",
            style: AppTextStyles.overline.copyWith(color: AppColors.cream500),
          ),
        ],
      ),
    );
  }
}
