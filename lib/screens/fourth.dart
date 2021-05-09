import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334, allowFontScaling: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.account_circle_rounded, color: Colors.black),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.indigo, width: 0.5),
        ),
        child: Column(
          children: [
            Container(
              height: ScreenUtil().setHeight(230),
              decoration:
              BoxDecoration(border: Border.all(color: Colors.black)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      // alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(width: 1, color: Colors.black),
                        ),
                      ),

                      child: Column(
                        children: [
                          Expanded(
                              flex: 1,
                              child: textTitle(
                                  "Дансны төлөв",
                                  "Нээгдсэн",
                                  Colors.black,
                                  Colors.green,
                                  25,
                                  10,
                                  45,
                                  45,
                                  10)),
                          Expanded(
                              flex: 1,
                              child: textTitle(
                                  "ЭТТ-н тоо",
                                  "1072",
                                  Colors.black,
                                  Colors.green,
                                  25,
                                  10,
                                  45,
                                  45,
                                  10)),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Column(
                        children: [
                          Expanded(
                              flex: 1,
                              child: textTitle(
                                  "Нийт үлдэгдэл",
                                  "100000₮",
                                  Colors.black,
                                  Colors.green,
                                  25,
                                  10,
                                  45,
                                  45,
                                  10)),
                          Expanded(
                              flex: 1,
                              child: textTitle(
                                  "Боломжит үлдэгдэл",
                                  "80000₮",
                                  Colors.black,
                                  Colors.green,
                                  25,
                                  10,
                                  45,
                                  45,
                                  10)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(30),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.spaceAround,
                children: [
                  textCenter("ҮЦ ханш", Colors.blue, true),
                  textCenter("Захиалгын сан", Colors.black, false),
                ],
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(30),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  vertical: ScreenUtil().setHeight(15),
                  horizontal: ScreenUtil().setWidth(30)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(flex: 1, child: table("APU")),
                      Expanded(
                        flex: 6,
                        child: Container(
                          height: ScreenUtil().setHeight(130),
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(width: 1, color: Colors.black),
                              right: BorderSide(width: 1, color: Colors.black),
                            ),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Column(
                                  children: [
                                    Expanded(
                                        flex: 1,
                                        child: textTitle(
                                            "Өмнөх хаалт",
                                            "596.22",
                                            Colors.black,
                                            Colors.black,
                                            21,
                                            4,
                                            10,
                                            10,
                                            0)),
                                    Expanded(
                                        flex: 1,
                                        child: textTitle(
                                            "Нээлт",
                                            "590",
                                            Colors.black,
                                            Colors.black,
                                            21,
                                            0,
                                            10,
                                            10,
                                            4)),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Column(
                                  children: [
                                    Expanded(
                                        flex: 1,
                                        child: textTitle(
                                            "Сүүлийн ханш",
                                            "590",
                                            Colors.black,
                                            Colors.green,
                                            21,
                                            4,
                                            10,
                                            10,
                                            0)),
                                    Expanded(
                                        flex: 1,
                                        child: textTitle(
                                            "Хаалт",
                                            "591",
                                            Colors.black,
                                            Colors.black,
                                            21,
                                            0,
                                            10,
                                            10,
                                            4)),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Column(
                                  children: [
                                    Expanded(
                                        flex: 1,
                                        child: textTitle(
                                            "Дээд",
                                            "607.99",
                                            Colors.black,
                                            Colors.black,
                                            21,
                                            4,
                                            10,
                                            10,
                                            0)),
                                    Expanded(
                                        flex: 1,
                                        child: textTitle(
                                            "Доод",
                                            "590",
                                            Colors.black,
                                            Colors.black,
                                            21,
                                            0,
                                            10,
                                            10,
                                            4)),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.arrow_downward,
                                      color: Colors.red,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(flex: 1, child: table("LEND")),
                      Expanded(
                        flex: 6,
                        child: Container(
                          height: ScreenUtil().setHeight(130),
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(width: 1, color: Colors.black),
                              right: BorderSide(width: 1, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(flex: 1, child: table("")),
                      Expanded(
                        flex: 6,
                        child: Container(
                          height: ScreenUtil().setHeight(130),
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(width: 1, color: Colors.black),
                              right: BorderSide(width: 1, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(flex: 1, child: table("")),
                      Expanded(
                        flex: 6,
                        child: Container(
                          height: ScreenUtil().setHeight(130),
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(width: 1, color: Colors.black),
                              right: BorderSide(width: 1, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(flex: 1, child: table("")),
                      Expanded(
                        flex: 6,
                        child: Container(
                          height: ScreenUtil().setHeight(130),
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(width: 1, color: Colors.black),
                              right: BorderSide(width: 1, color: Colors.black),
                              bottom: BorderSide(width: 1, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget table(String text) {
    return Container(
      height: ScreenUtil().setHeight(130),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 1, color: Colors.black),
          right: BorderSide(width: 1, color: Colors.black),
          left: BorderSide(width: 1, color: Colors.black),
          bottom: BorderSide(width: 1, color: Colors.black),
        ),
      ),
      child: Text("${text}"),
    );
  }

  Widget textCenter(String text, Color color, bool isLine) {
    return Column(
      children: [
        Text(
          "${text}",
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: ScreenUtil().setSp(25),
              color: color),
        ),
        isLine
            ? Container(
          width: 40,
          height: 4,
          color: Colors.blue,
        )
            : Container()
      ],
    );
  }

  Widget textTitle(String text, String text2, Color color, Color color1,
      int size, int top, int right, int left, int bottom) {
    return Container(
      margin: EdgeInsets.only(
          top: ScreenUtil().setHeight(top),
          right: ScreenUtil().setWidth(right),
          left: ScreenUtil().setWidth(left),
          bottom: ScreenUtil().setHeight(bottom)),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              "${text}",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: ScreenUtil().setSp(size),
                  color: color),
            ),
          ),
          SizedBox(
            // height: ScreenUtil().setHeight(10),
          ),
          Container(
            alignment: Alignment.bottomRight,
            child: Text(
              "${text2}",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: ScreenUtil().setSp(size),
                  color: color1),
            ),
          )
        ],
      ),
    );
  }
}
