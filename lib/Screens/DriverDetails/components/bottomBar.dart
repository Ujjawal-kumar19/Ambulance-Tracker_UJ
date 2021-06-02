import 'package:ambulance/Screens/DriverReg/driver_reg.dart';
import 'package:ambulance/global/size_config.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent.withOpacity(0),
      child: Container(
        height: 19.0 * SizeConfig.heightMultiplier,
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
        child: Column(children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.86,
            height: MediaQuery.of(context).size.height * 0.078,
            child: TextButton(
            /*  */
              style: TextButton.styleFrom(
                primary: Colors.white,                
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                      color: Color(0xff80cef4),
                      width: MediaQuery.of(context).size.width * 0.01))
                      ),
              child: Text(
                "Add a Driver!",
                style: TextStyle(
                    color: Color(0xff80cef4),
                    fontSize: MediaQuery.of(context).size.width * 0.07),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => driverreg()));
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text('Processing Data')));
              },
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.width * 0.03),
          Container(
            width: MediaQuery.of(context).size.width * 0.86,
            height: MediaQuery.of(context).size.height * 0.078,
            child: TextButton(
              style: TextButton.styleFrom(
                primary: Color(0xff80cef4),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                      color: Color(0xff80cef4),
                      width: MediaQuery.of(context).size.width * 0.01))
                      ),
              child: RichText(
                text: TextSpan(
                    text: 'Accept',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w600,
                      fontSize: MediaQuery.of(context).size.width * 0.07,
                      color: Colors.blue,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '\tPatient Name!',
                        style: TextStyle(
                            color: Color(0xff2b2b2b),
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w600,
                            fontSize: MediaQuery.of(context).size.width * 0.07),
                      ),
                    ]),
              ),
              onPressed: () {},
            ),
          ),
        ]),
      ),
    );
  }
}
