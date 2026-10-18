import 'package:material_ui/material_ui.dart';
import 'package:wc_2026_mobile/ui/core/shared/labeled_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 16,
          children: [
            LabeledField(
              label: 'Nome',
              hintText: 'John Doe',
            ),
            LabeledField(
              label: 'Email',
              hintText: 'voce@example.com',
              required: true,
              keyboardType: TextInputType.emailAddress,
            ),
            LabeledField(
              label: 'Senha',
              hintText: '********',
              required: true,
            ),
          ],
        ),
      ),
    );
  }
}
