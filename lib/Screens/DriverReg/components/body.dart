import 'package:ambulance/global/size_config.dart';
import 'package:flutter/material.dart';

class DrBODY extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<DrBODY> {
  String name;
  String number;
  String linumber;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: 6.5 * SizeConfig.widthMultiplier,
          vertical: 1.3 * SizeConfig.heightMultiplier),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 0.5 * SizeConfig.widthMultiplier,
                vertical: 2.3 * SizeConfig.heightMultiplier),
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.account_circle_rounded),
                labelText: 'Enter Driver Name',
                labelStyle: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.06,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  name = value;
                });
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 0.5 * SizeConfig.widthMultiplier,
                vertical: 2.3 * SizeConfig.heightMultiplier),
            child: TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.call),
                labelText: 'Enter Mobile Number',
                labelStyle: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.06,
                ),
                
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  number = value;
                });
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 0.5 * SizeConfig.widthMultiplier,
                vertical: 2.3 * SizeConfig.heightMultiplier),
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.badge),
                labelText:
                    'Enter Driver License No.', //////seee this for label text change
                labelStyle: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.06,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  linumber = value;
                });
              },
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: 0.5 * SizeConfig.widthMultiplier,
                vertical: 2.3 * SizeConfig.heightMultiplier),
            decoration: BoxDecoration(
                border: Border.all(width: 10, color: Colors.black38),
                borderRadius: const BorderRadius.all(const Radius.circular(8))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Upload driver image',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.1,
                    fontSize: MediaQuery.of(context).size.width * 0.06,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: 0.5 * SizeConfig.widthMultiplier,
                vertical: 2.3 * SizeConfig.heightMultiplier),
            decoration: BoxDecoration(
                border: Border.all(width: 10, color: Colors.black38),
                borderRadius: const BorderRadius.all(const Radius.circular(8))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Upload Driver License Pic',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.1,
                    fontSize: MediaQuery.of(context).size.width * 0.06,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
