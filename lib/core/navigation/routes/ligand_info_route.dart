import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:swifty_proteins/features/ligand_viewer/presentation/widgets/ligand_detail_page.dart';

@RoutePage()
class LigandInfoPage extends StatelessWidget {
  final String ligand;
  const LigandInfoPage({
    super.key,
    required this.ligand,
  });

  @override
  Widget build(BuildContext context) {
    return LigandDetailPage(
      ligand: ligand,
    );
  }
}
