import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  const TextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'O Lago Oeschinen fica aos pés do Blüemlisalp nos Alpes Berneses.'
        'Situado a 1.578 metros acima do nível do mar, é um dos lagos alpinos mais'
        'amplos. Um passeio de teleférico a partir de Kandersteg, seguido por meia'
        'hora de caminhada por pastagens e floresta de pinheiros, leva você ao lago,'
        'que aquece até 20 graus Celsius no verão. As atividades desfrutadas aqui'
        'incluem remo e andar no tobogã de verão.',
        softWrap: true,
      ),
    );
  }
}

class TextSection2 extends StatelessWidget {
  const TextSection2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'O Parque Nacional dos Lençóis Maranhenses é uma das maravilhas naturais do Brasil, localizado no estado do Maranhão.'
        'Com suas vastas dunas de areia branca e lagoas cristalinas que se formam com as chuvas, o parque oferece uma'
        'experiência única. As lagoas, como a Lagoa Azul e a Lagoa Bonita, se destacam entre as imensas dunas, criando um'
        'cenário surreal. Durante a estação chuvosa, de junho a setembro, as lagoas atingem seu auge de beleza, com águas'
        'transparentes e mornas, perfeitas para um mergulho refrescante. Atividades como caminhadas pelas dunas e passeios'
        'de barco pelos rios são imperdíveis para quem visita este paraíso natural.',
        softWrap: true,
      ),
    );
  }
}
