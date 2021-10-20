import 'package:adzkir_app/Model/model_doa.dart';
import 'package:adzkir_app/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreenDoa extends StatelessWidget {
  const DetailScreenDoa({Key? key, required this.doa}) : super(key: key);

  final ModelDoa doa;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: orangeColor,
      appBar: AppBar (
        backgroundColor: orangeColor,
        title: Text(
          doa.titlecover, style: purplePoppins.copyWith(
          fontSize: 16
        ),
        ),
        iconTheme: IconThemeData(color: purpelColor),
      ),
      body: SingleChildScrollView (
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(18),
              margin: EdgeInsets.symmetric(horizontal: edge, vertical: edge),
              decoration: BoxDecoration(
                color: purpelColor,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Column (
                children: [
                  Text(
                    doa.title1,
                    style: orangePoppins.copyWith(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10,),
                  Text(
                    doa.arab1,
                    style: orangePoppins.copyWith(
                      fontSize: 20
                    ),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(height: 10,),
                  Text(
                    doa.latin1,
                    style: orangePoppins.copyWith(
                      fontSize: 14
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 10,),
                  Text(
                    doa.translate1,style: orangePoppins.copyWith(
                    fontSize: 14
                  ),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
            ),
            (doa.title2 == null ) ? Container() :
            Container(
              padding: EdgeInsets.all(18),
              margin: EdgeInsets.symmetric(horizontal: edge, vertical: edge),
              decoration: BoxDecoration(
                  color: purpelColor,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column (
                children: [
                  Text(
                    (doa.title2 ?? '').isEmpty ? '' : doa.title2!,
                    style: orangePoppins.copyWith(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10,),
                  Text(
                    (doa.arab2 ?? '').isEmpty ? '' : doa.arab2!,
                    style: orangePoppins.copyWith(
                        fontSize: 20
                    ),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(height: 10,),
                  Text(
                    (doa.latin2 ?? '').isEmpty ? '' : doa.latin2!,
                    style: orangePoppins.copyWith(
                        fontSize: 14
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 10,),
                  Text(
                    (doa.translate2 ?? '').isEmpty ? '' : doa.translate2!,
                    style: orangePoppins.copyWith(
                      fontSize: 14
                  ),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
