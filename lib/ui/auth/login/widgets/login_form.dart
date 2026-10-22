import 'package:material_ui/material_ui.dart';
import 'package:wc_2026_mobile/ui/core/shared/labeled_field.dart';
import 'package:wc_2026_mobile/ui/core/theme/theme.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 32, 30, 26),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: AppDimensions.borderRadiusXl,
        boxShadow: AppShadows.lg,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // TAG
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 8,
            ),
            decoration: ShapeDecoration(
              color: AppColors.red500,
              shape: StadiumBorder(),
            ),
            child: Text(
              "ENTRAR",
              style: AppTextStyles.overline.copyWith(color: AppColors.white),
            ),
          ),

          SizedBox(height: 14),

          // WELCOME TEXT
          Text("BEM-VINDO", style: AppTextStyles.display),
          Text(
            "DE VOLTA",
            style: AppTextStyles.display.copyWith(color: AppColors.red500),
          ),
          SizedBox(height: 8),
          Text(
            "Continue montando seu álbum oficial.",
            style: AppTextStyles.body.copyWith(color: AppColors.gray600),
          ),

          SizedBox(height: 26),

          // INPUTS
          LabeledField(
            label: "E-MAIL",
            hintText: "voce@exemplo.com",
            keyboardType: TextInputType.emailAddress,
            textInputAction: .next,
            required: true,
          ),
          SizedBox(height: 16),
          LabeledField(
            label: "SENHA",
            hintText: "********",
            obscureText: true,
            textInputAction: .done,
            required: true,
          ),

          SizedBox(height: 18),

          // FORGOT PASSWORD
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              textStyle: AppTextStyles.caption,
            ),
            child: Text("Esqueci minha senha →"),
          ),

          SizedBox(height: 24),

          // LOGIN BUTTON
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: () {},
              style: AppTheme.darkButton,
              child: Text("ENTRAR NO ÁLBUM →"),
            ),
          ),
        ],
      ),
    );
  }
}
