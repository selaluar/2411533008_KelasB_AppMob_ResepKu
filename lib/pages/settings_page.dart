import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resepku/providers/theme_provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // watch: switch ikut berubah saat tema berganti
    final isDarkMode = context.watch<ThemeProvider>().isDarkMode;

    return Scaffold(
      appBar: AppBar(title: const Text('Pengaturan')),
      body: ListView(
        children: [
          SwitchListTile(
            title: const Text('Mode gelap'),
            subtitle: const Text('Ubah tampilan seluruh aplikasi'),
            secondary: const Icon(Icons.dark_mode_outlined),
            value: isDarkMode,
            // read: di dalam callback cukup memanggil method
            onChanged: (value) => context.read<ThemeProvider>().setDarkMode(value),
          ),
        ],
      ),
    );
  }
}
