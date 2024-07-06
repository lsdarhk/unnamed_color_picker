import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unnamed_color_picker/components/color_picker.dart';
import 'package:unnamed_color_picker/components/palette_containers.dart';
import 'package:unnamed_color_picker/providers/theme_provider.dart';
import 'package:unnamed_color_picker/providers/global_variables_provider.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  GlobalVariablesProvider gv = GlobalVariablesProvider();
  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final themeProvider = Provider.of<ThemeProvider>(context);
    return ChangeNotifierProvider<GlobalVariablesProvider>(
        create: (context) => gv,
        builder: (context, child) {
          final globalVariablesProvider =
              Provider.of<GlobalVariablesProvider>(context);
          return Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                paletteContainers(gv.currentColor, context),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () => colorPicker(context),
                      child: const Text(
                        'Pick a color',
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    ElevatedButton(
                      onPressed: () => globalVariablesProvider.getNewRGB(),
                      child: const Text(
                        'Randomize',
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Transform.scale(
                  scale: 1.065,
                  child: Switch(
                      value: themeProvider.isDark,
                      activeColor: colorScheme.primary,
                      thumbIcon: WidgetStateProperty.all(
                        Icon(
                          themeProvider.isDark ? Icons.nights_stay : Icons.sunny,
                        ),
                      ),
                      onChanged: (value) {
                        themeProvider.toggleTheme(value);
                      }),
                ),
              ],
            ),
          );
        });
  }
}
