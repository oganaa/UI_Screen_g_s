import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

class TakeStockScreen extends StatefulWidget {
  @override
  _TakeStockScreenState createState() => _TakeStockScreenState();
}

class _TakeStockScreenState extends State<TakeStockScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334, allowFontScaling: false);
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.white60,
        title: Text("хувьцаа авах".toUpperCase(),style: TextStyle(color: Colors.black),),
        actions: [
          Padding(
            padding: EdgeInsets.only(right:ScreenUtil().setWidth(10),left: ScreenUtil().setWidth(10)),
            child: Icon(Icons.menu,size: ScreenUtil().setWidth(50),color: Colors.grey.shade900,),
          ),
        ],
      ),
      body:Container(
        height: ScreenUtil().setHeight(1334),
        width: double.infinity,
        margin: EdgeInsets.only(top: ScreenUtil().setHeight(120),left: ScreenUtil().setWidth(55),right: ScreenUtil().setWidth(55)),
        // color: Colors.greenAccent,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black38.withOpacity(0.4),
              blurRadius: 1.0, // soften the shadow
              spreadRadius: 1.0, //extend the shadow
              // offset: Offset(
              //   1.0, // Move to right 10  horizontally
              //   1.0, // Move to bottom 10 Vertically
              // ),
            )
          ],
        ),
        child:
          // Container('')
          Stack(
            overflow: Overflow.visible,
            children: [
              Positioned(
                top: ScreenUtil().setHeight(-45),
                left: ScreenUtil().setWidth(30),
                child: Container(
                  width: ScreenUtil().setWidth(120),
                  height: ScreenUtil().setHeight(125),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Container(
                      padding: EdgeInsets.only(bottom: ScreenUtil().setWidth(10)),
                      alignment: Alignment.center,
                      child: Icon(Icons.note_add,size: ScreenUtil().setHeight(55),color: Colors.white,)),),
              ),
              Positioned.fill(child:
              Column(children: [
                Container(
                  padding: EdgeInsets.only(left: ScreenUtil().setWidth(70),top: ScreenUtil().setHeight(30),right: ScreenUtil().setWidth(40)),
                alignment: Alignment.center,
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:[
                        Text("хувьцаа авах -".toUpperCase(),style: TextStyle(color: Colors.black,fontSize: ScreenUtil().setSp(40)) ),
                        SizedBox(height: ScreenUtil().setHeight(15),),
                        Text("Захиалга",style: TextStyle(color: Colors.black,fontSize: ScreenUtil().setSp(30)))
                  ] )
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(45),horizontal: ScreenUtil().setWidth(45)),
                  // width: ScreenUtil().setWidth(143),
                  height: ScreenUtil().setHeight(220),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Expanded(flex:1, child: Container(alignment: Alignment.center, child: Icon(Icons.add_alert,size: ScreenUtil().setWidth(60),color: Colors.white,))),
                    Expanded(flex:3, child: Container(
                      margin: EdgeInsets.only(right: ScreenUtil().setWidth(60)),
                      alignment: Alignment.center,
                      child: Text("2021-03-01-ний өдрөөс эхлэн хувьцаа худалдаж авахад шимтгэл буурч 0.56% болно.",style: TextStyle(
                        fontSize: ScreenUtil().setSp(27),color: Colors.white,
                        height: ScreenUtil().setHeight(2.5)
                      ),),
                    ))
                  ],),
                ),
                Container(
                    // margin: EdgeInsets.only(left: ScreenUtil().setWidth(80),top: ScreenUtil().setHeight(30),right: ScreenUtil().setWidth(40)),

                    margin: EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(45),horizontal: ScreenUtil().setWidth(80)),
                  // color: Colors.red,
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding:EdgeInsets.only(top: ScreenUtil().setHeight(23),left: ScreenUtil().setWidth(10),right:ScreenUtil().setWidth(10),),
                          child: Text("ХҮЛЭЭН АВАГЧ БАНК - ХААН БАНК",style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: ScreenUtil().setSp(25)
                          ),)),
                      Container(     padding:EdgeInsets.only(top: ScreenUtil().setHeight(23),left: ScreenUtil().setWidth(10),right:ScreenUtil().setWidth(10), ),child: Text("ХҮЛЭЭН АВАГЧ - ГҮҮДСЕК ҮЦС",style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: ScreenUtil().setSp(25)
                      ))),
                      Container(     padding:EdgeInsets.only(top: ScreenUtil().setHeight(23),left: ScreenUtil().setWidth(10),right:ScreenUtil().setWidth(10),),child: Text("НОМИНАЛЬ ДАНС - 5704315133",style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: ScreenUtil().setSp(25)
                      ))),
                      Container(     padding:EdgeInsets.only(top: ScreenUtil().setHeight(23),left: ScreenUtil().setWidth(10),right:ScreenUtil().setWidth(10),),child: Text("ГҮЙЛГЭЭНИЙ УТГА - РЕГИСТРИЙН ДУГААР, УТАС",style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: ScreenUtil().setSp(25)
                      ))),
                      Container(
                        alignment: Alignment.center,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // alignment: Alignment.center,
                                padding:EdgeInsets.only(top: ScreenUtil().setHeight(40),left: ScreenUtil().setWidth(10),right:ScreenUtil().setWidth(10),),
                                child: Text("НИЙТ ҮЛДЭГДЭЛ: 54,477.83",style: TextStyle(
                                    color: Colors.black,
                                    fontSize: ScreenUtil().setSp(25)
                                ))),
                            Container(
                              // alignment: Alignment.center,
                                padding:EdgeInsets.only(top: ScreenUtil().setHeight(20),left: ScreenUtil().setWidth(10),right:ScreenUtil().setWidth(10),),
                                child: Text("БОЛОМЖИТ ҮЛДЭГДЭЛ: 54,477.83",style: TextStyle(
                                    color: Colors.black,
                                    fontSize: ScreenUtil().setSp(25)
                                ))),
                          ],
                        ),
                      ),
                      Form(
                        child: Column(
                          children: [
                        TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter a search term'
                            ),
                        ) ,
                          ],
                        ),
                      )

                    ],
                  )
                )
              ],)
              )
            ],
          )

      ),
    );
  }
}
