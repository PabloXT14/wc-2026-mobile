import 'package:material_ui/material_ui.dart';

import 'package:wc_2026_mobile/ui/core/theme/theme.dart';

class StatsBar extends StatelessWidget {
  const StatsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const DecoratedBox(
      decoration: BoxDecoration(
        color: AppColors.ink,
        borderRadius: AppDimensions.borderRadiusMd, // Cor de fundo cinza
      ),
      child: Row(
        children: [
          Expanded(
            child: _Stat(
              value: '48',
              label: 'SELEÇÕES',
            ),
          ),

          _StatDivider(),

          Expanded(
            child: _Stat(
              value: '980',
              label: 'FIGURINHAS',
            ),
          ),

          _StatDivider(),

          Expanded(
            child: _Stat(
              value: '16',
              label: 'CIDADES',
            ),
          ),
        ],
      ),
    );
  }
}

class _Stat extends StatelessWidget {
  final String label;
  final String value;

  const _Stat({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      spacing: 4,
      children: [
        Text(
          value,
          style: AppTextStyles.heading.copyWith(color: AppColors.gold500),
        ),

        Text(
          label,
          style: AppTextStyles.overline.copyWith(color: AppColors.cream500),
        ),
      ],
    );
  }
}

class _StatDivider extends StatelessWidget {
  const _StatDivider();

  @override
  Widget build(BuildContext context) {
    return VerticalDivider(
      color: AppColors.white.withValues(alpha: 0.15),
      thickness: 1,
      indent: 15,
      endIndent: 15,
      width: 1,
    );
  }
}
