import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemDetailScreen extends StatefulWidget {
  final String imgPath;
  final String title;
  final String price;

  ItemDetailScreen({
    @required this.imgPath,
    @required this.title,
    @required this.price,
  });

  @override
  _ItemDetailScreenState createState() => _ItemDetailScreenState();
}

class _ItemDetailScreenState extends State<ItemDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7A9BEE),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'Details',
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
                fontFamily: 'Montserrat', fontSize: 18.0, color: Colors.white),
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () {},
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
