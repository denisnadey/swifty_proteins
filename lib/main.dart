import 'package:flutter/material.dart';
import 'package:ngl_flutter/ngl_flutter.dart';
import 'dart:async';
import 'dart:io';
import 'package:file_picker/file_picker.dart'; // Для выбора файла

// Для выбора файла

class LigandApp extends StatelessWidget {
  const LigandApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LigandHomePage(),
    );
  }
}

class LigandHomePage extends StatefulWidget {
  const LigandHomePage({super.key});

  @override
  LigandHomePageState createState() => LigandHomePageState();
}

class LigandHomePageState extends State<LigandHomePage> {
  List<String> ligands = [];

  Future<void> _importLigandsFromFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      File file = File(result.files.single.path!);
      try {
        String data = await file.readAsString();
        setState(() {
          ligands = data.split('\n');
        });
      } catch (e) {
        print("Ошибка при чтении файла: $e");
      }
    }
  }

  void _viewLigand(String ligand) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LigandDetailPage(ligand: ligand),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ligand Viewer"),
        actions: [
          IconButton(
            icon: Icon(Icons.file_download),
            onPressed: _importLigandsFromFile,
          ),
        ],
      ),
      body: ligands.isEmpty
          ? Center(child: Text("No ligands loaded. Import a file to start."))
          : ListView.builder(
              itemCount: ligands.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(ligands[index]),
                  onTap: () => _viewLigand(ligands[index]),
                );
              },
            ),
    );
  }
}

class LigandDetailPage extends StatefulWidget {
  final String ligand;

  const LigandDetailPage({super.key, required this.ligand});

  @override
  State<LigandDetailPage> createState() => _LigandDetailPageState();
}

class _LigandDetailPageState extends State<LigandDetailPage> {
  String atomInfo = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Selected ligand: ${widget.ligand}\n selectedAtom: $atomInfo",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Positioned.fill(
              child: NglFlutter(
                ligand: widget.ligand,
                onAtomReceived: (model) {
                  setState(() {
                    atomInfo = '''element: ${model.element},
                    index:  ${model.index},
                    residue: ${model.residue},
                    ''';
                  });
                },
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.white,
                child: Text(
                  "Details and 3D viewer for Ligand: ${widget.ligand}",
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(LigandApp());
}
