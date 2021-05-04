import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

class StockPriceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334, allowFontScaling: false);
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.white,
       leading: Icon(Icons.menu,size: ScreenUtil().setWidth(50),color: Colors.grey.shade500,),
        title: Container(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text("Portfolio",style: TextStyle(
              color: Colors.black,
              fontSize: ScreenUtil().setSp(35),
              fontWeight: FontWeight.w600
            ),),
             Stack(
               overflow: Overflow.visible,
               children: [

               Icon(Icons.notifications,size: ScreenUtil().setWidth(55),color: Colors.grey.shade500,),
               Positioned(
                 top: 0,
                 left: ScreenUtil().setWidth(-15) ,
                 child: Container(
                   color: Colors.red.shade600,
                   padding: EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(1),horizontal: ScreenUtil().setWidth(6)),
                   child:Text("28",style:TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: ScreenUtil().setSp(18)) ,)
                 ),
               ),
                 Positioned(
                   top: 0,
                   left: ScreenUtil().setWidth(-100) ,
                   child: Icon(Icons.search,size: ScreenUtil().setWidth(55),color: Colors.grey.shade500,),
                 ),
                 Positioned(
                   top:  ScreenUtil().setHeight(-10),
                   left: ScreenUtil().setWidth(-78) ,
                   child: Container(
                       color: Colors.white.withOpacity(0.3),
                       // padding: EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(1),horizontal: ScreenUtil().setWidth(6)),
                       child:Text("+",style:TextStyle(color: Colors.grey.shade600,fontWeight: FontWeight.w700,fontSize: ScreenUtil().setSp(35)) ,)
                   ),
                 ),

             ],)
          ],),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right:ScreenUtil().setWidth(10),left: ScreenUtil().setWidth(10)),
            child: Icon(Icons.more_vert,size: ScreenUtil().setWidth(50),color: Colors.grey.shade500,),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          border: Border(top: BorderSide(width:2,color: Colors.grey.shade100))
        ),
        padding: EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(10),horizontal:  ScreenUtil().setWidth(30)),
        child:Column(children: [
          titleRow("ACCOUNT","Daily P&L","Netliq",20.0,Colors.grey,Colors.grey),
          SizedBox(height: ScreenUtil().setHeight(5),),
          titleRow("DCU0060","3.15K","275K",30.0,Colors.green,Colors.black),
          SizedBox(height: ScreenUtil().setHeight(20),),
          subTitleRow("Exliq","227K","SMA","164K","Unrizd","225K",Colors.grey,Colors.black,Colors.green),
          SizedBox(height: ScreenUtil().setHeight(5),),
          subTitleRow("MntMgn","58.8K","BuyPwr","909K","Rizd","0",Colors.grey,Colors.black,Colors.green),
          SizedBox(height: ScreenUtil().setHeight(15),),
          Expanded(child: Column(children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade300.withOpacity(0.8)
              ),
              height: ScreenUtil().setHeight(50),
              child: Row(
                children: [
                  Expanded(flex: 1,child:Container(
                      margin: EdgeInsets.only(left: ScreenUtil().setWidth(15)),
                      child: Text("SYMBOL",style: TextStyle(fontSize:ScreenUtil().setSp(22),color:Colors.black54,fontWeight: FontWeight.w500),))),
                  Expanded(flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex:1,child: Center(child: Text("LAST",style: TextStyle(fontSize:ScreenUtil().setSp(22),color:Colors.black54,fontWeight: FontWeight.w500),)),),
                        Expanded(flex:1,child: Center(child: Text("CHG",style: TextStyle(fontSize:ScreenUtil().setSp(22),color:Colors.black54,fontWeight: FontWeight.w500),)),),
                        Expanded(flex:1,child: Center(child: Text("POS",style: TextStyle(fontSize:ScreenUtil().setSp(22),color:Colors.black54,fontWeight: FontWeight.w500),)),),
                        Expanded(flex:1,child: Center(child: Text("P&L",style: TextStyle(fontSize:ScreenUtil().setSp(22),color:Colors.black54,fontWeight: FontWeight.w500),)),),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(children: [

                tableRow("LUV","NYM",Colors.green,51.45,1.05,200,108),
                tableRow("QCOM","NASCAO",Colors.green,55.37,0.53,100,29.5),
                tableRow("IBKR","EN",Colors.red,54.20,0.22,200,23.8),
                tableRow("USB","NYS",Colors.green,51.29,-0.27,-100,27.7),
                tableRow("TWTR","NYZE",Colors.green,31.22,0.77,-200,-48.0),
                tableRow("GM","NYZE",Colors.green,31.22,0.77,100,-48.0),
                tableRow("INTC","NYM",Colors.green,31.22,0.77,100,-48.0),
                tableRow("F","Mar22^19 8 5 PUT",Colors.green,31.22,0.77,-200,-48.0),
                tableRow("LUV","NYM",Colors.green,51.45,1.05,200,108),
                tableRow("QCOM","NASCAO",Colors.green,55.37,0.53,100,29.5),
                tableRow("IBKR","EN",Colors.red,54.20,0.22,200,23.8),
                tableRow("USB","NYS",Colors.green,51.29,-0.27,-100,27.7),
                tableRow("TWTR","NYZE",Colors.green,31.22,0.77,-200,-48.0),
                tableRow("GM","NYZE",Colors.green,31.22,0.77,100,-48.0),
                tableRow("INTC","NYM",Colors.green,31.22,0.77,100,-48.0),
                tableRow("F","Mar22^19 8 5 PUT",Colors.green,31.22,0.77,-200,-48.0),
                tableRow("LUV","NYM",Colors.green,51.45,1.05,200,108),
                tableRow("QCOM","NASCAO",Colors.green,55.37,0.53,100,29.5),
                tableRow("IBKR","EN",Colors.red,54.20,0.22,200,23.8),
                tableRow("USB","NYS",Colors.green,51.29,-0.27,-100,27.7),
                tableRow("TWTR","NYZE",Colors.green,31.22,0.77,-200,-48.0),
                tableRow("GM","NYZE",Colors.green,31.22,0.77,100,-48.0),
                tableRow("INTC","NYM",Colors.green,31.22,0.77,100,-48.0),
                tableRow("F","Mar22^19 8 5 PUT",Colors.green,31.22,0.77,-200,-48.0),
              ],),
            )
          ],))
        ],)
      ),
    );
  }
  Widget titleRow(String text,String text2,String text3,double font,Color color1,Color color2){
    return Row(children: [
      Expanded(flex:2,child: Text("${text}",style: TextStyle(fontSize:ScreenUtil().setSp(font),color:color2,fontWeight: FontWeight.w600)),),
      Expanded(flex:1,child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("${text2}",style: TextStyle(fontSize:ScreenUtil().setSp(font),color:color1,fontWeight: FontWeight.w600)),
          Text("${text3}",style: TextStyle(fontSize:ScreenUtil().setSp(font),color:color2,fontWeight: FontWeight.w600))
        ],
      ))
    ],);
  }
  Widget subTitleRow(String text,String text2,String text3,String text4,String text5,String text6,Color color1,Color color2,Color color3){
    return  Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(flex:1,child: Text("${text}",style: TextStyle(fontSize:ScreenUtil().setSp(22),color:color1,fontWeight: FontWeight.w500))),
        Expanded(flex:1,child: Text("${text2}",style: TextStyle(fontSize:ScreenUtil().setSp(22),color:color2,fontWeight: FontWeight.w500))),

        Expanded(flex:1,child: Text("${text3}",style: TextStyle(fontSize:ScreenUtil().setSp(22),color:color1,fontWeight: FontWeight.w500))),
        Expanded(flex:1,child: Text("${text4}",style: TextStyle(fontSize:ScreenUtil().setSp(22),color:color2,fontWeight: FontWeight.w500))),
        Expanded(flex:1,child: Container(
            child: Text("${text5}",style: TextStyle(fontSize:ScreenUtil().setSp(22),color:color1,fontWeight: FontWeight.w500)))),
        Expanded(flex:1,child: Container(
          alignment: Alignment.centerRight,
            child: Text("${text6}",style: TextStyle(fontSize:ScreenUtil().setSp(22),color:color3,fontWeight: FontWeight.w600)))),
      ],);
  }
  Widget tableRow(String title , String sub,Color isRed,double a1,double a2,double a3,double a4){
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: 2, color: Colors.grey.shade300.withOpacity(0.8)))
      ),
      height: ScreenUtil().setHeight(55),
      child: Row(
        children: [
          Expanded(flex: 1,child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  margin: EdgeInsets.only(left: ScreenUtil().setWidth(15)),
                  child: RichText(
                    text:TextSpan(
                        text: "${title}",style: TextStyle(fontSize:ScreenUtil().setSp(25),color:Colors.black,fontWeight: FontWeight.w900 ),
                        children: <TextSpan>[
                          TextSpan(text: ' ${sub}', style: TextStyle(color: Colors.black45, fontSize: ScreenUtil().setSp(15)),
                          )
                        ]
                    ) ,
                  )),
              Container(height: ScreenUtil().setWidth(8),width: ScreenUtil().setWidth(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: isRed),
              ),
            ],)
          ),
          Expanded(flex: 2,
            child: Row(
              children: [
                Expanded(flex:1,child: Center(child: Text("${a1}",style: TextStyle(fontSize:ScreenUtil().setSp(25),color:Colors.black,fontWeight: FontWeight.w800),)),),
                Expanded(flex:1,child: Center(child: Text("${a2}",style: TextStyle(fontSize:ScreenUtil().setSp(25),color:a2>0.0?Colors.green:Colors.red,fontWeight: FontWeight.w800),)),),
                Expanded(flex:1,child: Center(child: Text("${a3}",style: TextStyle(fontSize:ScreenUtil().setSp(25),color:a3>0.0?Colors.green:Colors.red,fontWeight: FontWeight.w800),)),),
                Expanded(flex:1,child: Center(child: Text("${a4}",style: TextStyle(fontSize:ScreenUtil().setSp(25),color:a4>0.0?Colors.green:Colors.red,fontWeight: FontWeight.w800),)),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
