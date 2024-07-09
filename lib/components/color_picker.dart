import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:provider/provider.dart';
import 'package:unnamed_color_picker/providers/global_variables_provider.dart';

void colorPicker(BuildContext context) {
  ColorScheme colorScheme = Theme.of(context).colorScheme;
  final globalVariablesProvider = Provider.of<GlobalVariablesProvider>(context, listen: false);
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(
        'Pick a color',
        style: TextStyle(
          color: colorScheme.onSurface,
        ),
      ),
      content: SizedBox(
        height: 450,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: ColorPicker(
              enableAlpha: false,
              pickerColor: globalVariablesProvider.currentColor,
              onColorChanged: (color) => globalVariablesProvider.updateColor(color),
              pickerAreaBorderRadius: BorderRadius.circular(5),
              displayThumbColor: true,
            ),
          ),
        ),
      ),
      actions: <Widget>[
        ElevatedButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Done'),
        )
      ],
    ),
  );
}
