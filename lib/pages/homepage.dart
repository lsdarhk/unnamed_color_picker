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
  GlobalVariables gv = GlobalVariables();
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    //ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          paletteContainers(gv.r, gv.g, gv.b),
          const SizedBox(
            height: 20,
          ),
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
