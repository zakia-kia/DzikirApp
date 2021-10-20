import 'package:adzkir_app/theme.dart';
import 'package:adzkir_app/ui/Doa_Harian_Page.dart';
import 'package:adzkir_app/ui/dzikir_pagi_petang.dart';
import 'package:adzkir_app/ui/dzikir_sehari_hari.dart';
import 'package:adzkir_app/ui/dzikir_setelah_sholat.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: orangeColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Row(
              children: [
                Flexible(
                    flex: 1,
                    child: Container(
                      color: orangeColor,
                    )),
                Flexible(
                    flex: 1,
                    child: Container(
                      color: purpelColor,
                    ))
              ],
            ),
            Column(
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: purpelColor,
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(80))),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 40),
                          child: Text(
                            'Doa dan \n Dzikir App',
                            style: whiteNormal.copyWith(fontSize: 30),
                          ),
                        ),
                        Flexible(
                            child: Image.asset(
                          'assets/img_title.png',
                          height: 200,
                        ))
                      ],
                    ),
                  ),
                ),
                Flexible(
                    flex: 3,
                    child: Container(
                      decoration: BoxDecoration(
                          color: orangeColor,
                          borderRadius:
                              BorderRadius.only(topRight: Radius.circular(80))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: edge),
                            child: Text(
                              'pilihan doa dan dzikir',
                              style: blackNormal.copyWith(fontSize: 24),
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) => DzikirSetelahSholat()
                              )
                              );
                            },
                              child: itemMenu(title: 'dzikir dan doa setelah sholat' , img:'assets/img_1.png',)
                          ),

                          SizedBox(
                            height: 16,
                          ),
                          InkWell(onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context) => DoaHarianPage()
                                )
                            );
                          },
                            child: itemMenu(title: 'Doa Harian' , img:'assets/img_2.png',)
                          ),

                          SizedBox(
                            height: 16,
                          ),
                          InkWell( onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context) => DzikirSehariHari()
                                )
                            );
                          },
                              child: itemMenu(title: 'Dzikir sehari-hari' , img:'assets/img_3.png')
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          InkWell( onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context) => DzikirPagiPetang()
                                )
                            );
                          },
                              child: itemMenu(title: 'dzikir pagi dan petang' , img:'assets/img_4.png')),
                        ],
                      ),
                    )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class itemMenu extends StatelessWidget {
  const itemMenu({
    Key? key, required this.title, required this.img,
  }) : super(key: key);

  final String title;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: purpelColor,
          borderRadius: BorderRadius.circular(15)),
      height: 80,
      margin: EdgeInsets.only(left: edge, right: 24),
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          Flexible(
              child: Container(
                margin: EdgeInsets.only( left: 10 ),
                width: 220,
                child: Text(title ,
              style: whiteNormal.copyWith(fontSize: 16),
                  maxLines: 2,
                  textAlign: TextAlign.left,
            ),
          )
          ),
          Image.asset(img)
        ],
      ),
    );
  }
}
