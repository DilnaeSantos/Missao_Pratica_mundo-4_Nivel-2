import 'package:flutter/material.dart';

class BannerSection extends StatelessWidget {
  final List<String> imageUrls = [
    '../lib/assets/images/montanhas.jpg',
    '../lib/assets/images/montanhas2.jpg',
    '../lib/assets/images/montanhas3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: PageView.builder(
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Navegar para a página específica do destino ao tocar na imagem
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => DestinationPage(destination: imageUrls[index])
              ));
            },
            child: Image.asset(
              imageUrls[index],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}


class BannerSection2 extends StatelessWidget {
  final List<String> imageUrls = [
    '../lib/assets/images/lencois.jpg',
    '../lib/assets/images/lencois2.jpg',
    '../lib/assets/images/lencois3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: PageView.builder(
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Navegar para a página específica do destino ao tocar na imagem
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => DestinationPage(destination: imageUrls[index])
              ));
            },
            child: Image.asset(
              imageUrls[index],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}

// Exemplo de DestinationPage (página de destino)
class DestinationPage extends StatelessWidget {
  final String destination;

  const DestinationPage({super.key, required this.destination});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Destination'),
      ),
      body: Center(
        child: Text('Welcome to $destination!'),
      ),
    );
  }
}