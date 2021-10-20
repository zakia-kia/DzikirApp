import 'package:adzkir_app/theme.dart';
import 'package:flutter/material.dart';

class DzikirSehariHari extends StatelessWidget {
  const DzikirSehariHari({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: orangeColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipPath(
                clipper: MyClipper(),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  color: purpelColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left:8
                        ),
                        child:IconButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                        icon: Icon(
                          Icons.arrow_back, size: 24, color: orangeColor,
                        )),
                      ),
                      Stack(
                        children: [
                          Container(
                            width: 200,
                            margin: EdgeInsets.only(left: edge),
                            child: Text('Dzikir setiap saat',
                              style: orangePoppins.copyWith(
                                fontSize: 25
                              ),
                              maxLines: 2,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Flexible(
                              child: Image.asset('assets/img_3.png',
                              width: 190,),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              //body
              SizedBox(height: edge,),
              ItemMenu(
                  jumlah: '33 kali',
                  arab: 'أَسْتَغْفِرُ الله',
                  latin: 'Astagfirulla'),
              SizedBox(height: 18,),
              ItemMenu(
                  jumlah: '33 kali',
                  arab: 'سبحان الله',
                  latin: 'Subhanallah'),
              SizedBox(height: 18,),
              ItemMenu(
                  jumlah: '33 kali',
                  arab: 'الحمد لله',
                  latin: 'Alhamdulillah'),
              SizedBox(height: 18,),
              ItemMenu(
                  jumlah: '33 kali',
                  arab: 'الله أكبر',
                  latin: 'Allahu Akbar'),
              SizedBox(height: 18,),
              ItemMenu(
                  jumlah: '33 kali',
                  arab: 'سبحان الله',
                  latin: 'Subhanallah'),
              SizedBox(height: 18,),
              ItemMenu(
                  jumlah: '33 kali',
                  arab: 'الحمد لله',
                  latin: 'Alhamdulillah'),
              SizedBox(height: 18,),
              ItemMenu(
                  jumlah: '33 kali',
                  arab: 'الله أكبر',
                  latin: 'Allahu Akbar'),

            ],
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 40);
    path.quadraticBezierTo(size.width/4, size.height, size.width/2, size.height);
    path.quadraticBezierTo(size.width - (size.width/4), size.height, size.width, size.height - 40);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }

}

class ItemMenu extends StatelessWidget {
  const ItemMenu({Key? key, required this.jumlah, required this.arab, required this.latin}) : super(key: key);
  final String jumlah;
  final String arab;
  final String latin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: edge, right: edge,
      ),
      decoration: BoxDecoration(
        color: purpelColor,borderRadius: BorderRadius.circular(15)
      ),
      height: 90,
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              jumlah, style : whitePoppins.copyWith(fontSize: 28),
            ),
          ),
          Column(
            children: [
              Text(arab, style: whiteNormal.copyWith(fontSize: 24),),
              Text(latin, style: whiteNormal.copyWith(fontSize: 14),),
            ],
          )
        ],
      ),
    );
  }
}

