import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class OrderFundScreen extends StatelessWidget {
  List<String> money= [
    "15,100.00 ₮",
    "15,200.00 ₮",
    "15,300.00 ₮",
    "15,400.00 ₮",
    "15,500.00 ₮",
    "15,600.00 ₮",
    "15,700.00 ₮",
    "15,800.00 ₮",
    "15,900.00 ₮",
    "16,000.00 ₮",
  ];
  List<String> countMoney = ["9","100",
    "1",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",

  ];
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334, allowFontScaling: false);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,

          title:Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'MARKET',
                style: GoogleFonts.goblinOne(
                  textStyle: TextStyle(color: Colors.blue, fontWeight: FontWeight.w900,),
                ),
              ),
              Container(
                // width: ScreenUtil().setWidth(200),
                child: Stack(
                  overflow: Overflow.visible,
                  children:[

                      // top: ScreenUtil().setHeight(5),
                        Text(
                          'HUB',
                          style: GoogleFonts.goblinOne(
                            textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w800,),
                          ),
                        ),
                        Positioned(
                          bottom: ScreenUtil().setHeight(-2),
                          child: Container(
                            width: ScreenUtil().setWidth(120),
                            height: ScreenUtil().setHeight(6),
                              color: Colors.blue,
                            ),
                        )
                  ]
                ),
              )
            ],
          )
        ),
      body: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: ScreenUtil().setHeight(100),
              // color: Colors.blue,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.center,
                    child: Text('ЗАХИАЛГЫН САН',style:TextStyle(
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.bold,
                      color: Colors.lightBlue,
                      fontSize: ScreenUtil().setHeight(20)
                    ),),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color:Colors.blue,
                          width: ScreenUtil().setHeight(4)
                        )
                      )
                    ),
                  ),),
                  Expanded(
                    flex: 1,
                    child: Container(alignment: Alignment.center,
                    child: Text('ЗАХИАЛГЫН БҮРТГЭЛ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,letterSpacing: 1.0 ,fontSize: ScreenUtil().setHeight(20),),),
                    // decoration: BoxDecoration(
                    //     border: Border(
                    //         bottom: BorderSide(
                    //             color:Colors.blue,
                    //             width: ScreenUtil().setHeight(4)
                    //         )
                    //     )
                    // ),
                  ),),
                ],
              ),
            ),

            Padding(
              padding:EdgeInsets.only(
                top: ScreenUtil().setHeight(40),left: ScreenUtil().setWidth(15), right: ScreenUtil().setWidth(15),bottom: ScreenUtil().setHeight(28)
              ),
              child: Container(
                height: ScreenUtil().setHeight(170),
                decoration: BoxDecoration(
                    color: Colors.green.shade400,
                    borderRadius: BorderRadius.circular(5)
                ),
                padding: EdgeInsets.all(ScreenUtil().setHeight(14)),
                child: Column(
                  children: [
                    Row(
                      children: [
                      Text("TCK",style: TextStyle(fontWeight: FontWeight.bold,fontSize: ScreenUtil().setHeight(45),color: Colors.white),),
                      SizedBox(width: ScreenUtil().setWidth(40),),
                      Text("ТАЛХ ЧИХЭР",style: TextStyle(
                          fontWeight: FontWeight.w400,fontSize: ScreenUtil().setHeight(28),color: Colors.white
                      ),)
                    ],),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text("Өнөөдрийн хаалт",style: TextStyle(
                          fontWeight: FontWeight.w500,fontSize: ScreenUtil().setHeight(25),color: Colors.white
                      )),
                      Text("0.07 %",style: TextStyle(
                          fontWeight: FontWeight.bold,fontSize: ScreenUtil().setHeight(30),color: Colors.white
                      )),
                      Text("Өмнөх хаалт",style: TextStyle(
                          fontWeight: FontWeight.w500,fontSize: ScreenUtil().setHeight(25),color: Colors.white
                      ))
                    ],),
                    rowManage("15300.00 ₮","10.00 ₮","15290.00 ₮"),

                  ],

                ),

              ),
            ),
            Padding(
              padding:EdgeInsets.only(
                top: ScreenUtil().setHeight(0),left: ScreenUtil().setWidth(15), right: ScreenUtil().setWidth(15),bottom: ScreenUtil().setHeight(0)
    ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: ScreenUtil().setWidth(18)),
                        child: Text('Watchinglist-рүү нэмэх',style: TextStyle(color:Colors.grey.shade700 ,fontWeight: FontWeight.w600,fontSize: ScreenUtil().setSp(28)) ,)),
                    Stack(
                      children: [
                        Icon(Icons.remove_red_eye_rounded,size: ScreenUtil().setWidth(70),color: Colors.grey.shade500,),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(50)
                            ),
                            child:  Icon(Icons.add,size: ScreenUtil().setWidth(33),color: Colors.grey.shade500,),
                          ),
                        )
                      ],
                    ),

                  ],
                ),
                  SizedBox(height: ScreenUtil().setHeight(24),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        flex:1,
                        child: Container(
                          alignment: Alignment.center,
                          child: Text("Арилжигдсан ширхэг",style: TextStyle(
                              fontWeight: FontWeight.w500,fontSize: ScreenUtil().setHeight(30),color: Colors.white
                          )),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text("Үнийн дүн",style: TextStyle(
                              fontWeight: FontWeight.w500,fontSize: ScreenUtil().setHeight(30),color: Colors.white
                          )),
                        ),
                      ),
                    ],),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Text("3",style: TextStyle(
                              fontWeight: FontWeight.w500,fontSize: ScreenUtil().setHeight(35),color: Colors.white
                          )),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Text("45,900 ₮",style: TextStyle(
                              fontWeight: FontWeight.w500,fontSize: ScreenUtil().setHeight(35),color: Colors.white
                          )),
                        ),
                      ),
                    ],),
                  SizedBox(height: ScreenUtil().setHeight(24),),
                  Row(
                    children: [
                      Expanded(
                          flex:1,
                          child: takeSellMoney("Авах",Colors.green.withOpacity(0.7))
                       ),
                      SizedBox(width: ScreenUtil().setWidth(35),),
                      Expanded(
                          flex:1,
                          child: takeSellMoney("Зарах",Colors.red.withOpacity(0.7))
                      )
                    ],
                  ),
                  SizedBox(height: ScreenUtil().setHeight(15),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        flex:1,
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical:  ScreenUtil().setHeight(5),horizontal:0),
                          margin:  EdgeInsets.symmetric(vertical:  ScreenUtil().setHeight(15),horizontal: ScreenUtil().setWidth(60)),
                          decoration: BoxDecoration(
                            color: Colors.green.shade900,
                            borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          alignment: Alignment.center,
                          child: Text("Авах",style: TextStyle(
                              fontWeight: FontWeight.w500,fontSize: ScreenUtil().setHeight(30),color: Colors.white
                          )),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical:  ScreenUtil().setHeight(5),horizontal:0),
                          margin:  EdgeInsets.symmetric(vertical:  ScreenUtil().setHeight(15),horizontal: ScreenUtil().setWidth(60)),
                          decoration: BoxDecoration(
                              color: Colors.red.shade900,
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          alignment: Alignment.center,
                          child: Text("Зарах",style: TextStyle(
                              fontWeight: FontWeight.w500,fontSize: ScreenUtil().setHeight(30),color: Colors.white
                          )),
                        ),
                      ),
                    ],),
                ],

              ),
            )
           ],

        ),

      )
      ,
    );
  }
  Widget rowManage(String text,String price,String text3){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("${text}",style: TextStyle(
            fontWeight: FontWeight.w500,fontSize: ScreenUtil().setHeight(33),color: Colors.white
        )),
        Text("${price}",style: TextStyle(
            fontWeight: FontWeight.w500,fontSize: ScreenUtil().setHeight(33),color: Colors.white
        )),
        Text("${text3}",style: TextStyle(
            fontWeight: FontWeight.w500,fontSize: ScreenUtil().setHeight(33),color: Colors.white
        )),
      ],);
  }
  Widget takeSellMoney(String name , Color color){
    return    Container(
      height: ScreenUtil().setHeight(525),

      child: Column(children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(3),
              topLeft:  Radius.circular(3),
            ),
            color: Colors.grey.shade800,
          ),
          height: ScreenUtil().setHeight(50),

          alignment: Alignment.center,
          child:Text("${name}",style: TextStyle(
              color: Colors.white,
              fontSize: ScreenUtil().setSp(28)
          ),),
        ),
        Expanded(child: Container(
          decoration: BoxDecoration(
            // color: Colors.green,
            border:Border.all(
                color:Colors.grey.shade800
            ),
          ),
          child: Padding(
            padding:  EdgeInsets.only(
                top: ScreenUtil().setHeight(8),left: ScreenUtil().setWidth(4), right: ScreenUtil().setWidth(4),bottom: ScreenUtil().setHeight(10)
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Үнэ",style: TextStyle(
                        color: Colors.white,
                        fontSize: ScreenUtil().setSp(28)
                    ),),
                    Text("Ширхэг",style: TextStyle(
                        color: Colors.white,
                        fontSize: ScreenUtil().setSp(28)
                    ),),
                  ],
                ),
                Expanded(child: ListView.builder(
                    itemCount: money.length,
                    itemBuilder: (_,int index){
                      return Container(
                        // color:Colors.grey,
                        padding: EdgeInsets.symmetric(
                            vertical: ScreenUtil().setHeight(5),horizontal: ScreenUtil().setWidth(12)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("${money[index]}",style: TextStyle(
                              color: color,
                              fontWeight: FontWeight.bold,

                              fontSize: ScreenUtil().setSp(25),
                            ),),
                            Text("${countMoney[index]}",style: TextStyle(
                                color: Colors.white,
                                fontSize: ScreenUtil().setSp(27)
                            ),),
                          ],
                        ),
                      );
                    }),)
              ],

            ),

          ),
        ))
      ],),

    );
  }
}
