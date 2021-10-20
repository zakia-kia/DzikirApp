import 'package:adzkir_app/Model/dzikir_pagi.dart';
import 'package:adzkir_app/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DzikirPagiPage extends StatelessWidget {
  const DzikirPagiPage({Key? key}) : super(key: key);

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
                  Expanded(child: Text(
                    'Dzikir Pagi', style: purplePoppins.copyWith(
                    fontSize: 18
                  ),
                  ))
                ],
              ),
              Expanded(
                  child: PageView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: dataDzikirPagi.length,
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
                          child: Column(
                            children: [
                              Text(dataDzikirPagi[index].title,
                              style: orangePoppins.copyWith(fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 10,),
                              Text(dataDzikirPagi[index].arab,
                              style: orangePoppins.copyWith(fontSize: 15),
                                textAlign: TextAlign.right,
                                textDirection: TextDirection.rtl,
                              ),
                              SizedBox(height: 10,),
                              Text(dataDzikirPagi[index].latin,
                                style: orangePoppins.copyWith(fontSize: 15),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(height: 10,),
                              Text(dataDzikirPagi[index].translate,
                                style: orangePoppins.copyWith(fontSize: 15),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ),
                      );
                    })),
              ],
          ),
        ),
      ),
    );
  }
}
