import 'package:flutter/widget_previews.dart';
import 'package:material_ui/material_ui.dart';
import 'package:wc_2026_mobile/ui/core/theme/app_theme.dart';

Widget previewSurface(Widget child) {
  return MaterialApp(
    theme: AppTheme.light,
    home: Scaffold(body: Center(child: child)),
  );
}

Widget previewFieldSurface(Widget child) {
  return previewSurface(SizedBox(width: 280, child: child));
}

Widget _dsBox(Widget child) => SizedBox(width: 220, height: 52, child: child);

@Preview(
  group: 'Buttons',
  name: 'Primary',
  size: Size(280, 120),
  wrapper: previewSurface,
)
Widget previewPrimaryButton() {
  return _dsBox(FilledButton(onPressed: () {}, child: const Text('PRIMÁRIO')));
}

@Preview(
  group: 'Buttons',
  name: 'Secondary',
  size: Size(280, 120),
  wrapper: previewSurface,
)
Widget previewSecondaryButton() {
  return _dsBox(
    FilledButton(
      style: AppTheme.secondaryButton,
      onPressed: () {},
      child: const Text('SECUNDÁRIO'),
    ),
  );
}

@Preview(
  group: 'Buttons',
  name: 'Dark',
  size: Size(280, 120),
  wrapper: previewSurface,
)
Widget previewDarkButton() {
  return _dsBox(
    FilledButton(
      style: AppTheme.darkButton,
      onPressed: () {},
      child: const Text('DARK'),
    ),
  );
}

@Preview(
  group: 'Buttons',
  name: 'Danger',
  size: Size(280, 120),
  wrapper: previewSurface,
)
Widget previewDangerButton() {
  return _dsBox(
    FilledButton(
      style: AppTheme.dangerButton,
      onPressed: () {},
      child: const Text('DANGER'),
    ),
  );
}

@Preview(
  group: 'Buttons',
  name: 'Danger Outlined',
  size: Size(280, 120),
  wrapper: previewSurface,
)
Widget previewDangerOutlinedButton() {
  return _dsBox(
    FilledButton(
      style: AppTheme.dangerOutlineButton,
      onPressed: () {},
      child: const Text('DANGER OUTLINED'),
    ),
  );
}

@Preview(
  group: 'Buttons',
  name: 'Ghost',
  size: Size(280, 120),
  wrapper: previewSurface,
)
Widget previewGhostButton() {
  return _dsBox(
    FilledButton(
      style: AppTheme.ghostButton,
      onPressed: () {},
      child: const Text('GHOST BUTTON'),
    ),
  );
}

@Preview(
  group: 'Buttons',
  name: 'Danger Ghost',
  size: Size(280, 120),
  wrapper: previewSurface,
)
Widget previewDangerGhostButton() {
  return _dsBox(
    FilledButton(
      style: AppTheme.dangerGhostButton,
      onPressed: () {},
      child: const Text('DANGER GHOST'),
    ),
  );
}

/// Desabilitado não é uma variante: é o que qualquer um dos de cima vira com
/// `onPressed: null`. As cores saem do `disabledBackgroundColor` do tema.
@Preview(
  group: 'Buttons',
  name: 'Disabled',
  size: Size(280, 120),
  wrapper: previewSurface,
)
Widget previewDisabledButton() {
  return _dsBox(
    FilledButton(onPressed: null, child: const Text('DESABILITADO')),
  );
}

@Preview(
  group: 'Fields',
  name: 'All states',
  size: Size(340, 460),
  wrapper: previewFieldSurface,
)
Widget previewAllFieldStates() {
  return Column(
    mainAxisSize: .min,
    spacing: 16,
    children: [
      TextFormField(initialValue: 'John Doe'),

      TextFormField(decoration: InputDecoration(hintText: 'voce@example.com')),

      TextFormField(
        initialValue: '',
        autovalidateMode: .always,
        validator: (_) => 'Campo obrigatório',
      ),

      TextFormField(decoration: AppTheme.searchInput()),
    ],
  );
}
