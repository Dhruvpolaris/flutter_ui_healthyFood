import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import './widgets/list_item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21BFBF),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
              bottom: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                    icon: Icon(Icons.arrow_back_ios,
                        size: 20, color: Colors.white),
                    onPressed: () {}),
                Container(
                  width: 125.0,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.filter_list,
                            size: 20,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.menu,
                            size: 20,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ]),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 35.0),
            child: Row(
              children: <Widget>[
                Text(
                  'Healthy',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0),
                  ),
                ),
                SizedBox(width: 10.0),
                Text(
                  'Food',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(color: Colors.white, fontSize: 25.0),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          Container(
            height: MediaQuery.of(context).size.height - 155.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(90.0),
              ),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(
                left: 35.0,
                right: 15.0,
                bottom: 20.0,
              ),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 25.0,bottom: 10),
                  child: Container(
                    height: MediaQuery.of(context).size.height - 280.0,
                    child: ListView(
                      children: <Widget>[
                        ListItem(
                            imgPath: 'assets/plate6.png',
                            title: 'Spring Bowl',
                            price: '24.00'),
                        ListItem(
                            imgPath: 'assets/plate2.png',
                            title: 'Salmon Bowl',
                            price: '22.00'),
                        ListItem(
                            imgPath: 'assets/plate5.png',
                            title: 'Avacado Bowl',
                            price: '21.99'),
                        ListItem(
                            imgPath: 'assets/plate1.png',
                            title: 'Salad Bowl',
                            price: '26.99'),
                        ListItem(
                            imgPath: 'assets/plate3.png',
                            title: 'Steak Bowl',
                            price: '39.00'),
                        ListItem(
                            imgPath: 'assets/plate4.png',
                            title: 'Pot Rice',
                            price: '19.99'),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 60.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 1.0),
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child: Center(
                        child: Icon(Icons.search, color: Colors.black),
                      ),
                    ),
                    Container(
                      height: 60.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 1.0),
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child: Center(
                        child: Icon(Icons.shopping_basket, color: Colors.black),
                      ),
                    ),
                    Container(
                      height: 60.0,
                      width: 120.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 1.0),
                        borderRadius: BorderRadius.circular(18.0),
                        color: Color(0xFF1C1428),
                      ),
                      child: Center(
                        child: Text(
                          'Checkout',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.white,
                              fontSize: 15.0),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
