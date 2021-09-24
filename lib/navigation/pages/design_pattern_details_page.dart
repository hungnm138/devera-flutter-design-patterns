// ignore_for_file: prefer_const_constructors
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../constants/constants.dart';
import '../../data/repositories/design_pattern_categories_repository.dart';
import '../../widgets/modules/design_pattern_details/layouts/layouts.dart';
import '../../constants/themes.dart';

class DesignPatternDetailsPage extends ConsumerWidget {
  final String id;

  const DesignPatternDetailsPage({
    @PathParam('id') required this.id,
  });

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final designPattern = watch(designPatternProvider(id));

    return designPattern.when(
      data: (pattern) => LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > Dimens.screenDesktop) {
            return SinglePageLayout(designPattern: pattern);
          }

          return TabsLayout(designPattern: pattern);
        },
      ),
      loading: () => Center(
        child: CircularProgressIndicator(
          backgroundColor: lightBackgroundColor,
          valueColor: AlwaysStoppedAnimation<Color>(
            Colors.black.withOpacity(0.65),
          ),
        ),
      ),
      error: (_, __) => const Text('Oops, something went wrong...'),
    );
  }
}
