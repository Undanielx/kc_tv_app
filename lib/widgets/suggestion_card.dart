import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  const SuggestionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: const Image(
            image: AssetImage('assets/images/ari6.jpg'),
            ),
        ),
        const SizedBox(width: 20,),
        Column(
          children: [
            SizedBox(
              width:250, 
              height:50,
              child: Text(
                'POV',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            SizedBox(
              width: 300,
              height: 80,
              child: Text(
                'Disfruta de POV-Ariana Grande, unos de los ultimos exitos de la cantante y actriz',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            SizedBox(
              width: 300,
              height: 50,
              child: Text(
                'Fecha: 29/05/12',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            SizedBox(
              width: 300,
              height: 50,
              child: Text(
                'Duracion: 03:54',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        )
      ],
    );
  }
}