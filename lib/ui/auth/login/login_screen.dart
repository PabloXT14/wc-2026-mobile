import 'package:material_ui/material_ui.dart';
import 'package:wc_2026_mobile/ui/auth/login/widgets/emblem.dart';
import 'package:wc_2026_mobile/ui/auth/login/widgets/header.dart';
import 'package:wc_2026_mobile/ui/auth/login/widgets/login_form.dart';
import 'package:wc_2026_mobile/ui/core/theme/app_text_styles.dart';
import 'package:wc_2026_mobile/ui/core/theme/theme.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Header(),

          // CONTENT
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // EXPANDED CONTENT
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 20),
                    Emblem(),
                    SizedBox(height: 26),
                    Text(
                      'FIFA WORLD CUP 26™',
                      style: AppTextStyles.overline,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 36),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppDimensions.paddingHorizontal,
                      ),
                      child: LoginForm(),
                    ),
                  ],
                ),

                // FOOTER
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: AppColors.ink,
                    textStyle: AppTextStyles.bodyBold,
                  ),
                  child: Text("Não tem conta?  Criar conta →"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
