import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:swifty_proteins/features/view_collection/presentation/widgets/view_collection.dart';

@RoutePage()
class CollectionPage extends StatelessWidget {
  const CollectionPage({super.key, required this.ligands});
  final List<String> ligands;
  @override
  Widget build(BuildContext context) {
    return LigandHomePage(ligands: ligands);
  }
}
