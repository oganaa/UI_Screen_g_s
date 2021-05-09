
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

class TakeStockScreen extends StatefulWidget {
  @override
  _TakeStockScreenState createState() => _TakeStockScreenState();
}

class _TakeStockScreenState extends State<TakeStockScreen> {
  bool isTemdegt=false;
  int _radioValue = 0;

  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;

      switch (_radioValue) {
        case 0:
          break;
        case 1:
          break;
        case 2:
          break;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334, allowFontScaling: false);
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      // appBar: AppBar(
      //   backgroundColor: Colors.white60,
      //   title: Text("хувьцаа авах".toUpperCase(),style: TextStyle(color: Colors.black),),
      //   actions: [
      //     Padding(
      //       padding: EdgeInsets.only(right:ScreenUtil().setWidth(10),left: ScreenUtil().setWidth(10)),
      //       child: Icon(Icons.menu,size: ScreenUtil().setWidth(50),color: Colors.grey.shade900,),
      //     ),
      //   ],
      // ),
      body: SingleChildScrollView(
        child: Column(
          children:[
            Container(
              margin: EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(20),horizontal: ScreenUtil().setWidth(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("хувьцаа авах".toUpperCase(),style: TextStyle(color: Colors.black,fontSize: ScreenUtil().setSp(42))),
                  Padding(
                    padding: EdgeInsets.only(right:ScreenUtil().setWidth(10),left: ScreenUtil().setWidth(10)),
                    child: Icon(Icons.menu,size: ScreenUtil().setWidth(50),color: Colors.grey.shade900,),
                  ),
                ],
              ),
            ),

            Container(
              height: ScreenUtil().setHeight(2400),
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
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
                                    height: 1.5
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
                                              color: Colors.black.withOpacity(.8),
                                              fontSize: ScreenUtil().setSp(25)
                                          ))),
                                      Container(
                                        // alignment: Alignment.center,
                                          padding:EdgeInsets.only(top: ScreenUtil().setHeight(20),left: ScreenUtil().setWidth(10),right:ScreenUtil().setWidth(10),),
                                          child: Text("БОЛОМЖИТ ҮЛДЭГДЭЛ: 54,477.83",style: TextStyle(
                                              color: Colors.black.withOpacity(.8),
                                              fontSize: ScreenUtil().setSp(25)
                                          ))),
                                    ],
                                  ),
                                ),
                              ],
                            )
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(80),horizontal: ScreenUtil().setWidth(45)),
                          child: Form(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextTitle("Үнэт цаас"),

                                InkWell(
                                  onTap: (){
                                    setState(() {
                                      isTemdegt = !isTemdegt;
                                    });
                                  },
                                  child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  width: 1,
                                                  color: !isTemdegt ? Colors.grey:Colors.white
                                              )
                                          )
                                      ),
                                      margin:EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(15),horizontal: ScreenUtil().setWidth(5)),
                                      padding:EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(15),horizontal: ScreenUtil().setWidth(5)),
                                      child:Text('Үнэт цаасны кодоо оруулна уу',style: TextStyle(fontSize: ScreenUtil().setSp(28),color: Colors.grey),)
                                  ),
                                ),

                                Stack(
                                  overflow: Overflow.visible,
                                  children: [

                                  isTemdegt?
                                  Container(

                                    width:double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                        border: Border(

                                          bottom: BorderSide(
                                              width: 1,
                                              color: Colors.blue
                                          ),
                                          right:    BorderSide(
                                              width: 1,
                                              color: Colors.blue
                                          ),
                                          left:    BorderSide(
                                              width: 1,
                                              color: Colors.blue
                                          ),
                                        )
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:  EdgeInsets.only(left:ScreenUtil().setWidth(5.0),right: ScreenUtil().setWidth(5.0)),
                                          child: Container(
                                            height: ScreenUtil().setHeight(60),
                                            child: TextField(
                                              cursorColor: Colors.black,
                                              decoration: InputDecoration(

                                                contentPadding: EdgeInsets.all(ScreenUtil().setHeight(8)),
                                                focusedBorder: OutlineInputBorder(

                                                  borderSide: new BorderSide(color: Colors.grey),
                                                  borderRadius:  BorderRadius.circular(0),
                                                ),
                                                border: OutlineInputBorder(
                                                  borderRadius:  BorderRadius.all(
                                                    Radius.circular(0),
                                                  ),

                                                ),

                                              ),
                                            ),
                                          ),
                                        ),

                                        Padding(
                                          padding:  EdgeInsets.all(ScreenUtil().setWidth(5.0)),
                                          child: Container(
                                              padding:  EdgeInsets.all(4.0),
                                              width: double.infinity,
                                              color:Colors.grey.shade300,
                                              child: Text('2-с дээш тэмдэгт оруулна уу',style: TextStyle(fontSize: ScreenUtil().setSp(30),color: Colors.black),
                                              )
                                          ),
                                        )
                                      ],
                                    ),
                                  ):Container( ),
                                  Column(children: [
                                    !isTemdegt?Container(
                                        height: ScreenUtil().setHeight(120),
                                        alignment: Alignment.bottomLeft,
                                        child: TextTitle("Захиалгын төрөл")):Container(height: ScreenUtil().setHeight(120),),
                                    Container(
                                      width: double.infinity,
                                      margin:EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(15),horizontal: ScreenUtil().setWidth(5)),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  width: 1,
                                                  color:  Colors.grey
                                              )
                                          )
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('-Сонгох-'),
                                      ),
                                    ),
                                    titleContainer("Биелэх нөхцөл",('-Сонгох-'),),
                                    titleContainer("Хүчинтэй хугацаа",('-2021-05-10-'),),
                                    SizedBox(height: ScreenUtil().setHeight(15),),
                                    Container(
                                      height: ScreenUtil().setHeight(120),
                                      margin:EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(15),horizontal: ScreenUtil().setWidth(0)),
                                      child: TextFormField(
                                        cursorColor: Colors.black,
                                        decoration: InputDecoration(
                                            labelText: "Тоо ширхэг",

                                          labelStyle: new TextStyle(
                                          color: Colors.grey
                                          ),
                                          contentPadding: EdgeInsets.all(ScreenUtil().setHeight(1)),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: new BorderSide(color: Colors.purple),
                                            borderRadius:  BorderRadius.circular(0),
                                          ),
                                          border: UnderlineInputBorder(
                                            borderSide: new BorderSide(color: Colors.grey),
                                            borderRadius:  BorderRadius.all(

                                              Radius.circular(0),
                                            ),

                                          ),

                                        ),
                                      ),
                                    ),
                                    SizedBox(height: ScreenUtil().setHeight(15),),
                                    Container(
                                      alignment: Alignment.bottomRight,
                                      height: ScreenUtil().setHeight(50),
                                      child: RichText(
                                        text: TextSpan(
                                          text: "0.00",
                                          style:TextStyle(color:Colors.red,fontSize: ScreenUtil().setSp(25)),
                                          children: [
                                        TextSpan(
                                        text: ' төгрөг', style: TextStyle(color: Colors.black, fontSize:  ScreenUtil().setSp(25))),
                                          ]
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: ScreenUtil().setHeight(30),),
                                    Container(
                                      margin:EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(15),horizontal: ScreenUtil().setWidth(15)),
                                      alignment: Alignment.topLeft,
                                      child: Text("Баталгаажуулах код авах хэлбэр:",style: TextStyle(color: Colors.black,fontSize: ScreenUtil().setSp(28)),),),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        new Radio(
                                          activeColor: Colors.red,
                                          value: 0,
                                          groupValue: _radioValue,
                                          onChanged: _handleRadioValueChange,
                                        ),
                                        new Text(
                                          'Утас',
                                          style: new TextStyle(  color: Colors.grey,fontSize: ScreenUtil().setSp(25),),
                                        ),
                                        new Radio(
                                          activeColor: Colors.red,
                                          value: 1,
                                          groupValue: _radioValue,
                                          onChanged: _handleRadioValueChange,
                                        ),
                                        new Text(
                                          'И-мейл',
                                          style: new TextStyle(
                                            color: Colors.grey,
                                            fontSize: ScreenUtil().setSp(25),
                                          ),
                                        ),
                                      ],),
                                    Container(
                                      height: ScreenUtil().setHeight(100),
                                      width: ScreenUtil().setWidth(double.infinity),
                                        alignment: Alignment.bottomRight,

                                      child: Container(
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Colors.green,

                                          borderRadius: BorderRadius.circular(5.0),),
                                        margin:EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(15),horizontal: ScreenUtil().setWidth(15)),
                                        height: ScreenUtil().setHeight(100),
                                        width: ScreenUtil().setWidth(300),

                                        child: Text("Захиалга өгөх",style: TextStyle(color: Colors.white,fontSize: ScreenUtil().setSp(30)),),
                                      )
                                    ),
                                    // Container(
                                    //     height: ScreenUtil().setHeight(120),
                                    //     alignment: Alignment.bottomLeft,
                                    //     child: TextTitle("Захиалгын төрөл"))

                                  ],),




                                  // TextTitle("Захиалгын төрөл")
                                ],),
                              ],
                            ),
                          ),
                        )
                      ],)
                    )
                  ],
                ),
              ),
            SizedBox(
              height: ScreenUtil().setHeight(150),
            )
          ]

        ),
      )

    );

  }
  Widget titleContainer(String text,String text1){
    return Column(children: [
    Container(
          height: ScreenUtil().setHeight(120),
          alignment: Alignment.bottomLeft,
          child: TextTitle("${text}")),
      Container(
        width: double.infinity,
        margin:EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(15),horizontal: ScreenUtil().setWidth(5)),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    width: 1,
                    color:  Colors.grey
                )
            )
        ),
        child: Padding(
          padding:  EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(15),horizontal: ScreenUtil().setWidth(10)),
          child: Text('${text1}'),
        ),
      )
    ],);
  }
  Widget TextTitle(String txt){
   return  Text("${txt}",style: TextStyle(fontSize: ScreenUtil().setSp(25),color: Colors.grey.shade700),);
  }
}
