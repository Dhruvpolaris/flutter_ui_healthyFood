import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoCard extends StatefulWidget {
  final String cardTitle;
  final String info;
  final String unit;

  InfoCard(
    this.cardTitle,
    this.info,
    this.unit,
  );

  @override
  _InfoCardState createState() => _InfoCardState();
}

class _InfoCardState extends State<InfoCard> {
  var selectedCard;

  @override
  void initState() {
    selectedCard = 'WEIGHT';
    super.initState();
  }

  selectCard(cardTitle) {
    setState(() {
      // print('in setstate');
      // selectedCard = '';
      selectedCard = cardTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        selectCard(widget.cardTitle);
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: widget.cardTitle == selectedCard
              ? Color(0xFF7A9BEE)
              : Colors.white,
          border: Border.all(
              color: widget.cardTitle == selectedCard
                  ? Colors.transparent
                  : Colors.grey.withOpacity(0.3),
              style: BorderStyle.solid,
              width: 0.75),
        ),
        height: 100.0,
        width: 100.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 15.0),
              child: Text(
                widget.cardTitle,
                style: GoogleFonts.montserrat(textStyle:
                  TextStyle(
                    fontSize: 12.0,
                    color: widget.cardTitle == selectedCard
                        ? Colors.white
                        : Colors.grey.withOpacity(0.7),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, bottom: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    widget.info,
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          fontSize: 14.0,
                          color: widget.cardTitle == selectedCard
                              ? Colors.white
                              : Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    widget.unit,
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        fontSize: 12.0,
                        color: widget.cardTitle == selectedCard
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
