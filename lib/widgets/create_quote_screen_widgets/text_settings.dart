import 'package:flutter/material.dart';
import 'package:quote_generator/widgets/widgets.dart';

class TextSettings extends StatelessWidget {
  const TextSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SettingsDivider(),
        TextAlignSelector(),
        SettingsDivider(),
        TextSizeSelector(),
        SettingsDivider(),
        LetterSpacingSelector(),
        SettingsDivider(),
        WordSpacingSelector(),
        SettingsDivider(),
      ],
    );
  }
}
