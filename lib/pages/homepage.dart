import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unnamed_color_picker/components/palette_containers.dart';
import 'package:unnamed_color_picker/providers/theme_provider.dart';
import 'package:unnamed_color_picker/global_variables.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    //ColorScheme colorScheme = Theme.of(context).colorScheme;
    GlobalVariables gv = GlobalVariables();
    final int red = gv.r;
    final int green = gv.g;
    final int blue = gv.b;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          paletteContainers(red, green, blue),
          const SizedBox(
            height: 20,
          ),
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
  }
}
