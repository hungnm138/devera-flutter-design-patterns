import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../design_patterns/decorator/decorator.dart';

class PizzaInformation extends StatelessWidget {
  final Pizza pizza;

  const PizzaInformation({
    required this.pizza,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          'Pizza details:',
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: Dimens.spaceL),
        Text(
          pizza.getDescription(),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: Dimens.spaceM),
        Text('Price: \$${pizza.getPrice().toStringAsFixed(2)}'),
      ],
    );
  }
}
