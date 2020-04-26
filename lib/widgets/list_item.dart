import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../item_detail.dart';

class ListItem extends StatelessWidget {
  final String imgPath;
  final String title;
  final String price;

  ListItem({
    @required this.imgPath,
    @required this.title,
    @required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ItemDetailScreen(
                  imgPath: imgPath, title: title, price: price),
            ),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: [
                  Image(
                        image: AssetImage(imgPath),
                        fit: BoxFit.cover,
                        height: 75.0,
                        width: 75.0),
                  
                  SizedBox(width: 25.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                                fontSize: 17.0, fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        '\$' + price,
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            fontSize: 15.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.add),
              color: Colors.black,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
