import 'package:flutter/material.dart';
import 'package:flutter_generate_pdf_example/simple_paragraphs/api/pdf_api.dart';
import 'package:flutter_generate_pdf_example/simple_paragraphs/api/pdf_paragraph_api.dart';
import 'package:flutter_generate_pdf_example/simple_paragraphs/widget/button_widget.dart';

import '../../main.dart';

class PdfSimplePage extends StatefulWidget {
  @override
  _PdfSimplePageState createState() => _PdfSimplePageState();
}

class _PdfSimplePageState extends State<PdfSimplePage> {
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
                  text: 'Simple PDF',
                  onClicked: () async {
                    final pdfFile =
                        await PdfApi.generateCenteredText('Sample Text');

                    PdfApi.openFile(pdfFile);
                  },
                ),
                const SizedBox(height: 24),
                ButtonWidget(
                  text: 'Paragraphs PDF',
                  onClicked: () async {
                    final pdfFile = await PdfParagraphApi.generate();

                    PdfApi.openFile(pdfFile);
                  },
                ),
                // Container(
                //   padding: EdgeInsets.all(4),
                //   decoration: BoxDecoration(
                //       shape: BoxShape.circle, //可以设置角度，BoxShape.circle直接圆形
                //       // borderRadius: BorderRadius.circular(5.0),
                //       color: Colors.white),
                //   child: RawMaterialButton(
                //     onPressed: () {},
                //     elevation: 2.0,
                //     fillColor: Colors.orange,
                //     hoverColor: Colors.red,
                //     child: Icon(
                //       Icons.pause,
                //       size: 35.0,
                //     ),
                //     padding: EdgeInsets.all(15.0),
                //     shape: CircleBorder(),
                //   ),
                // ),
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle, //可以设置角度，BoxShape.circle直接圆形
                    // borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: FloatingActionButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.pause,
                      color: Colors.red,
                      size: 35.0,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
}
