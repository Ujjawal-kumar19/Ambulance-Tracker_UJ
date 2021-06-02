import 'package:ambulance/Screens/DriverReg/components/body.dart';
import 'package:ambulance/Screens/DriverReg/components/bottomBar.dart';
import 'package:ambulance/components/AppBar.dart';
import 'package:ambulance/global/size_config.dart';
import 'package:flutter/material.dart';

class driverreg extends StatefulWidget {
  @override
  DriverReg createState() => DriverReg();
}

class DriverReg extends State<driverreg> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: IAppBar(
            height: 12 * SizeConfig.heightMultiplier,
            child: Padding(
                padding: EdgeInsets.only(
                  top: 0.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xfff56163),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(35.0))),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(Icons.arrow_back),
                          iconSize: 30.0,
                          color: Colors.white,
                          onPressed: () {
                            Navigator.of(context).pop();
                          }),
                      SizedBox(width: 10.0),
                      Text('Add a Driver',
                          style: TextStyle(
                            fontFamily: "Nunito",
                            fontWeight: FontWeight.w600,
                            fontSize: 4 * SizeConfig.textMultiplier,
                            color: Color(0xffffffff),
                          )),
                      SizedBox(
                        width: SizeConfig.widthMultiplier * 10,
                      ),
                    ],
                  ),
                )),
          ),
          body: SingleChildScrollView(
            child: DrBODY(),
          ),
          bottomNavigationBar: BottomBar()),
    );
  }
}
