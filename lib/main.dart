import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_ui/material_ui.dart';
import 'package:wc_2026_mobile/ui/core/shared/app_assets.dart';
import 'package:wc_2026_mobile/ui/core/theme/app_theme.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              FilledButton(onPressed: () {}, child: const Text('Hello World')),
              Image.asset(
                AppAssets.images.logoFifaWc2026,
                width: 200,
                height: 200,
              ),
              SvgPicture.asset(
                AppAssets.patterns.paniniArcSwatchSvg,
                width: 200,
                height: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
