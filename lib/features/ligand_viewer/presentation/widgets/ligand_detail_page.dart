import 'package:flutter/material.dart';
import 'package:ngl_flutter/ngl_flutter.dart';

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
