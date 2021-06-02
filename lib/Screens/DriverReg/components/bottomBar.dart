import 'package:ambulance/global/size_config.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: 6.5 * SizeConfig.widthMultiplier,
          vertical: 1.3 * SizeConfig.heightMultiplier),
      color: Colors.transparent.withOpacity(0),
      child: Container(
        height: 10.0 * SizeConfig.heightMultiplier,
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
        child: Column(children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.86,
            height: MediaQuery.of(context).size.height * 0.1,
            child: TextButton(
                
              style: TextButton.styleFrom(
                   primary:Color(0xff80cef4) ,          
                shape: RoundedRectangleBorder(
                  
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                      color: Color(0xff80cef4),
                      width: MediaQuery.of(context).size.width * 0.01))
                      
                      ) ,
              child: Text(
                "Register!",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: MediaQuery.of(context).size.width * 0.07),
              ),
              onPressed: () {},
            ),
          ),
        ]),
      ),
    );
  }
}
