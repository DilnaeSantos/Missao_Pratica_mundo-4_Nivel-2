import 'package:flutter/material.dart';
import 'components/title_section.dart';
import 'components/button_group.dart';
import 'components/text_section.dart';
import 'components/banner_section.dart';
import 'components/search_bar.dart' as customSearch; // Usa um apelido para o search_bar.dart customizado
import 'components/navigation_bar.dart' as customNav; // Usa um apelido para o navigation_bar.dart customizado
import 'pages/contato_page.dart';
import 'pages/pacotes_page.dart';
import 'pages/sobre_nos_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  String _searchQuery = '';

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _searchQuery = ''; // Reseta a pesquisa ao mudar de página
    });
  }

  // Método para obter a página correta com base no índice selecionado
  Widget _getPage(int index) {
    switch (index) {
      case 0:
        return _buildDestinationPage(); // Página de destinos
      case 1:
        return const PacotesPage(); // Página de pacotes
      case 2:
        return const ContatoPage(); // Página de contato
      case 3:
        return const SobreNosPage(); // Página sobre nós
      default:
        return Container(); // Página padrão vazia
    }
  }

  // Método para construir a página de destinos com a pesquisa
  Widget _buildDestinationPage() {
    return SingleChildScrollView( // Permite rolagem do conteúdo
      child: Column(
        children: [
          customSearch.SearchBar(
            onSearch: (query) {
              setState(() {
                _searchQuery = query; // Atualiza a query de pesquisa
              });
            },
          ), // Campo de pesquisa

          // Renderiza as seções com base na pesquisa
          if (_searchQuery.isEmpty || _searchQuery == 'Oeschinen Lake Campground' || _searchQuery.toLowerCase() == 'oeschinen lake campground' || _searchQuery == 'Kandersteg, Switzerland' || _searchQuery.toLowerCase() == 'kandersteg, switzerland' || _searchQuery == 'kandersteg') ...[
            BannerSection(), // Banner para a primeira seção
            TitleSection(),  // Título para a primeira seção
            ButtonGroup(),   // Botões para a primeira seção
            TextSection(),   // Texto para a primeira seção
          ],

          if (_searchQuery.isEmpty || _searchQuery == 'Lençóis Maranhenses' || _searchQuery.toLowerCase() == 'lençois maranhenses' || _searchQuery == 'Maranhão, Brasil' || _searchQuery.toLowerCase() == 'maranhão, brasil') ...[
            BannerSection2(), // Banner para a segunda seção
            TitleSection2(),  // Título para a segunda seção
            ButtonGroup(),    // Botões para a segunda seção
            TextSection2(),   // Texto para a segunda seção
          ],
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customNav.NavigationBar(), // Mantém a barra de navegação customizada
      body: _getPage(_selectedIndex), // Obtém a página correta com base no índice selecionado
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.place),
            label: 'Destinos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel),
            label: 'Pacotes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: 'Contato',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Sobre Nós',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: const Color(0xFF0F7CEA),
        onTap: _onItemTapped,
      ),
    );
  }
}
