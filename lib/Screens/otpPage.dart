import 'package:ambulance/Screens/mobileNo.dart';
import 'package:ambulance/global/size_config.dart';
import 'package:ambulance/global/style.dart';
import 'package:flutter/material.dart';


class otpPage extends StatefulWidget {
  @override
  _otpPageState createState() => _otpPageState();
}

class _otpPageState extends State<otpPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            //for temp period
            icon: Icon(Icons.arrow_back_ios),
            iconSize: 25.0,
            color: Color(0xffff0000),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => MobileNumberPage()));
            },
          ),
          elevation: 0.0,
          //actions: <Widget>[
          //  IconButton(
          //    icon: Icon(Icons.menu),
          //    iconSize: 30.0,
          //    onPressed: () {},
          //  ),
          //],style: TextStyle(
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 20.0),
                  child: Container(
                    child: Image.asset(
                      'assets/images/otp-bg.png',
                      height: SizeConfig.heightMultiplier * 35,
                    ),
                    decoration: BoxDecoration(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 48.0, right: 48.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Enter OTP code sent on your device.",
                        textAlign: TextAlign.center,
                        style: formFontStyle,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 28.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(
                                  left: 22.0, right: 10.0),
                              child: Icon(
                                Icons.message,
                                size: 25.0,
                              ),
                            ),
                            hintText: 'xxxx',
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(60.0),
                                borderSide: BorderSide(
                                    width: 2.0, color: Color(0xff8e8e8e))),
                          ),
                          // The validator receives the text that the user has entered.
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 8.5,
                        width: SizeConfig.widthMultiplier * 90,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            /*color: Color(0xffff0000),*/
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60.0),
                              side: BorderSide(color: Color(0xffff0000)))
                          ),
                          onPressed: () {
                            // Validate returns true if the form is valid, otherwise false.
                            if (_formKey.currentState.validate()) {
                              // If the form is valid, display a snackbar. In the real world,
                              // you'd often call a server or save the information in a database
                            }
                          },
                          child: Text(
                            'Next',
                            style: submitButtonFontStyle,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Container(
                        child: new RichText(
                          textAlign: TextAlign.center,
                          text: new TextSpan(
                            // Note: Styles for TextSpans must be explicitly defined.
                            // Child text spans will inherit styles from parent

                            style: registerFontStyle,
                            children: <TextSpan>[
                              new TextSpan(
                                text: 'Edit Mobile Number?\n',
                              ),
                              new TextSpan(
                                  text: 'Resend?',
                                  style: new TextStyle(
                                      color: Color(0xff313131),
                                      fontWeight: FontWeight.w900)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
//Container(
//   transform: Matrix4.translationValues(0.0, -50.0, 0.0),
//   height: 200.0,
//   width: MediaQuery.of(context).size.width * 1,
//   decoration: BoxDecoration(
//     color: Color(0xffff0000),
//     borderRadius: BorderRadius.only(
//       bottomLeft: Radius.circular(30),
//       bottomRight: Radius.circular(30),
//     ),
//     boxShadow: [
//       //background color of box
//       BoxShadow(
//         color: Colors.grey,
//         blurRadius: 10.0, // soften the shadow
//         spreadRadius: 3.0, //extend the shadow
//         offset: Offset(
//           0.0, // Move to right 10  horizontally
//           4.0, // Move to bottom 10 Vertically
//         ),
//       )
//     ],
//   ),
//   child: Row(
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: <Widget>[
//       Padding(
//         padding: const EdgeInsets.only(left: 70.0),
//         child: SvgPicture.asset(
//           'assets/images/ambulance.svg',
//           height: 75.0,
//           width: 110.0,
//         ),
//       ),
//       Container(
//         child: Padding(
//           padding: const EdgeInsets.only(top: 23.0, right: 50.0),
//           child: Text(
//             "Am-Track",
//             style: headerFontStyle,
//           ),
//         ),
//       ),
//     ],
//   )
// ),
