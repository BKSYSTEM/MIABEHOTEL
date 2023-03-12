import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miabehotel/constants/colors.dart';

class RectangleWidget extends StatefulWidget {
  @override
  _RectangleWidgetState createState() => _RectangleWidgetState();
}

class _RectangleWidgetState extends State<RectangleWidget> {
  int _count = 0;
  List<int> _childCounts = [0];

  void _incrementCount() {
    setState(() {
      _count++;
    });
  }

  void _decrementCount() {
    setState(() {
      _count--;
    });
  }

  void _incrementChildCount(int index) {
    setState(() {
      _childCounts[index]++;
    });
  }

  void _addChild() {
    setState(() {
      _childCounts.add(0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                for (var i = 0; i < _childCounts.length; i++)
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Enfant ${i + 1}',
                        style: GoogleFonts.nunito(
                          color: blackColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(width: 17),
                      Container(
                        width: 139,
                        height: 37,
                        color: Colors.grey,
                        margin: EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () => _incrementChildCount(i),
                              icon: Icon(Icons.arrow_drop_down),
                            ),
                            Text(
                              _childCounts[i].toString(),
                              style: TextStyle(fontSize: 20),
                            ),
                            IconButton(
                              onPressed: () => _incrementChildCount(i),
                              icon: Icon(Icons.arrow_drop_up),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                IconButton(
                  onPressed: _addChild,
                  icon: Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
