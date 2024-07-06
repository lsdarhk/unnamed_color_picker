import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
    final themeProvider = Provider.of<ThemeProvider>(context);
    return ChangeNotifierProvider<GlobalVariablesProvider>(
        create: (context) => gv,
        builder: (context, child) {
          final globalVariables = Provider.of<GlobalVariablesProvider>(context);
          int red = gv.r;
          int green = gv.g;
          int blue = gv.b;
          return Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                paletteContainers(red, green, blue),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () => showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text(
                            'Pick a color',
                          ),
                          content: const Placeholder(),
                          actions: <Widget>[
                            ElevatedButton(
                              onPressed: () => Navigator.of(context).pop(),
                              child: const Text('Done'),
                            )
                          ],
                        ),
                      ),
                      child: const Text('Pick a color'),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    ElevatedButton(
                      onPressed: () => globalVariables.getNewRGB(),
                      child: const Text(
                        'Randomize',
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () => themeProvider.toggleTheme(),
                  child: const Text('Toggle theme mode'),
                ),
                const SizedBox(
                  width: 40,
                ),
              ],
            ),
          );
        });
  }
}
