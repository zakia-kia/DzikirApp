import 'package:adzkir_app/Model/dzikir_setelah_sholat.dart';
import 'package:adzkir_app/theme.dart';
import 'package:flutter/material.dart';

class DzikirSetelahSholat extends StatelessWidget {
  const DzikirSetelahSholat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          color: orangeColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back
                      )),
                  Expanded(child: Text (
                    'Dzikir Setelah Sholat', style: purplePoppins.copyWith(
                    fontSize: 18
                  ),
                  ))
                ],
              ),
              Expanded(
                child: PageView.builder(
                    scrollDirection : Axis.horizontal,
                    itemCount: listDzikirAfterPray.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(edge),
                        padding: EdgeInsets.all(edge),
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                            color: purpelColor,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: SingleChildScrollView(
                          child: Column (
                            children: [
                              Text(listDzikirAfterPray [index].title,
                                style: orangePoppins.copyWith(fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 10,),
                              Text(listDzikirAfterPray [index].arabic,
                                style: orangePoppins.copyWith(fontSize: 15),
                                textAlign: TextAlign.right,
                                textDirection: TextDirection.rtl,
                              ),
                              Text(listDzikirAfterPray [index].latin,
                                style: orangePoppins.copyWith(fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                              Text(listDzikirAfterPray [index].translate,
                                style: orangePoppins.copyWith(fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      );
                    }
                ))
            ],
          ),
        ),
      ),
    );
  }
}
