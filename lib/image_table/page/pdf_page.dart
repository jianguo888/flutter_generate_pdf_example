import 'package:flutter/material.dart';
import 'package:flutter_generate_pdf_example/image_table/api/pdf_api.dart';
import 'package:flutter_generate_pdf_example/image_table/widget/button_widget.dart';

import '../../main.dart';

class PdfTablePage extends StatefulWidget {
  @override
  _PdfTablePageState createState() => _PdfTablePageState();
}

class _PdfTablePageState extends State<PdfTablePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(MyApp.title),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(32),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ButtonWidget(
                  text: 'Table PDF',
                  onClicked: () async {
                    final pdfFile = await PdfApi.generateTable();

                    PdfApi.openFile(pdfFile);
                  },
                ),
                const SizedBox(height: 24),
                ButtonWidget(
                  text: 'Image PDF',
                  onClicked: () async {
                    final pdfFile = await PdfApi.generateImage();

                    PdfApi.openFile(pdfFile);
                  },
                ),
              ],
            ),
          ),
        ),
      );
}
