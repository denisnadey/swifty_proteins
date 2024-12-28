import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:swifty_proteins/core/navigation/app_router.gr.dart';

class LigandHomePage extends StatefulWidget {
  const LigandHomePage({super.key, required this.ligands});
  final List<String> ligands;
  @override
  LigandHomePageState createState() => LigandHomePageState();
}

class LigandHomePageState extends State<LigandHomePage> {
  void _viewLigand(String ligand) {
    context.router.push(LigandInfoRoute(ligand: ligand));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ligand Collection Viewer"),
        actions: [
          IconButton(
            icon: Icon(Icons.keyboard_backspace),
            onPressed: () => context.router.maybePop(),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: widget.ligands.length,
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            title: Text(widget.ligands[index]),
            onTap: () => _viewLigand(widget.ligands[index]),
          );
        },
      ),
    );
  }
}
