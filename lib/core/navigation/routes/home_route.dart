import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:swifty_proteins/core/navigation/app_router.gr.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Future<void> _importLigandsFromFile(BuildContext context) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      File file = File(result.files.single.path!);
      try {
        String data = await file.readAsString();
        final ligands = data.split('\n');
        if (context.mounted) {
          context.router.push(
            CollectionRoute(
              ligands: ligands,
            ),
          );
        }
      } catch (e) {
        debugPrint("error reading file: $e");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Ligand Viewer"),
          actions: [
            IconButton(
              icon: Icon(Icons.file_download),
              onPressed: () => _importLigandsFromFile(context),
            ),
          ],
        ),
        body: Center(
            child: Text(
          "No ligands loaded. Import a file to start.",
        )));
  }
}
