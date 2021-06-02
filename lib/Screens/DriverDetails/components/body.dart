import 'package:ambulance/Screens/DriverDetails/components/verticalView.dart';
import 'package:ambulance/global/size_config.dart';
import 'package:flutter/material.dart';

class DdBODY extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<DdBODY> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 3.3 * SizeConfig.widthMultiplier,
            vertical: 3.3 * SizeConfig.heightMultiplier),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Select Driver",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600,
                    fontSize: MediaQuery.of(context).size.width * 0.07,
                    color: Color(0xff2d2d2d),
                  ),
                ),
                Container(),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 1.5 * SizeConfig.heightMultiplier),
              child: VerticalView(),
            ),
          ],
        ));
  }
}
