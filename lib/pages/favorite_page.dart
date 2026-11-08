import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resepku/providers/favorite_provider.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  // Latihan 2: minta konfirmasi sebelum menghapus semua favorit
  Future<void> _confirmClear(BuildContext context) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Hapus semua favorit?'),
        content: const Text('Semua resep akan dihapus dari daftar favorit.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext, false),
            child: const Text('Batal'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(dialogContext, true),
            child: const Text('Hapus'),
          ),
        ],
      ),
    );

    if (confirmed == true && context.mounted) {
      context.read<FavoriteProvider>().clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    // watch: tombol "Hapus semua" ikut aktif/nonaktif saat jumlah favorit berubah
    final count = context.watch<FavoriteProvider>().count;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorit Saya'),
        actions: [
          TextButton.icon(
            // onPressed null = tombol nonaktif ketika daftar kosong
            onPressed: count == 0 ? null : () => _confirmClear(context),
            icon: const Icon(Icons.delete_sweep_outlined),
            label: const Text('Hapus semua'),
          ),
        ],
      ),
      body: Consumer<FavoriteProvider>(
        builder: (context, favorite, child) {
          if (favorite.count == 0) {
            return const Center(
              child: Text(
                'Belum ada resep favorit.\nTekan ikon hati di daftar resep.',
                textAlign: TextAlign.center,
              ),
            );
          }
          return ListView(
            children: [
              for (final recipe in favorite.items)
                ListTile(
                  title: Text(recipe.name),
                  subtitle: Text(recipe.cuisine),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete_outline),
                    onPressed: () => favorite.toggle(recipe),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
