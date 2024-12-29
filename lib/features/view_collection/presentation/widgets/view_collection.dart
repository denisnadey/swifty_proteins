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
  late List<String> filteredLigands;
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredLigands = widget.ligands;
  }

  void _filterLigands(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredLigands = widget.ligands;
      } else {
        filteredLigands = widget.ligands
            .where(
                (ligand) => ligand.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  void _viewLigand(String ligand) {
    context.router.push(LigandInfoRoute(ligand: ligand));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ligand Collection Viewer"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: searchController,
              onChanged: _filterLigands,
              decoration: const InputDecoration(
                labelText: 'Search Ligand',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredLigands.length,
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  title: Text(filteredLigands[index]),
                  onTap: () => _viewLigand(filteredLigands[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
