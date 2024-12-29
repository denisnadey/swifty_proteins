import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:native_screenshot_widget/native_screenshot_widget.dart';
import 'package:ngl_flutter/ngl_flutter.dart';

import 'package:share_plus/share_plus.dart';
import 'package:path_provider/path_provider.dart';

class LigandDetailPage extends StatefulWidget {
  final String ligand;

  const LigandDetailPage({super.key, required this.ligand});

  @override
  State<LigandDetailPage> createState() => _LigandDetailPageState();
}

class _LigandDetailPageState extends State<LigandDetailPage> {
  String atomInfo = '';

  final screenshotController = NativeScreenshotController();

  Future<Uint8List?> takeScreenshot() async {
    Uint8List? image;
    final bytes = await screenshotController.takeScreenshot(scale: 1);
    image = bytes;

    return image;
  }

  Future<void> captureAndShare(BuildContext context) async {
    try {
      await takeScreenshot().then((Uint8List? image) async {
        if (image != null) {
          final directory = await getApplicationDocumentsDirectory();
          final imagePath = await File('${directory.path}/image.png').create();
          await imagePath.writeAsBytes(image);

          await Share.shareXFiles(
            [XFile(imagePath.path)],
            text: 'Ligand: ${widget.ligand}',
          );
          if (context.mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Изображение успешно создано')),
            );
          }
        } else {
          if (context.mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Ошибка: не удалось создать изображение')),
            );
          }
        }
      });
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Ошибка: $e')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Selected ligand: ${widget.ligand}\n selectedAtom: $atomInfo",
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {},
          ),
          Gap(16),
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () => captureAndShare(context),
          ),
        ],
      ),
      body: NativeScreenshot(
        controller: screenshotController,
        child: Column(
          children: [
            Text(
              "Details and 3D viewer for Ligand: ${widget.ligand}",
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            Gap(16),
            Expanded(
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
