import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final Function(String) onSearch; // Adiciona a função de callback

  const SearchBar({super.key, required this.onSearch}); // Atualiza o construtor para aceitar a função

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Pesquise um destino...',
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        onSubmitted: (query) {
          onSearch(query); // Chama a função de callback com a query
        },
      ),
    );
  }
}
