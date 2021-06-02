import 'package:ambulance/global/size_config.dart';
import 'package:flutter/material.dart';

class VerticalView extends StatefulWidget {
  final String categoryName;

  VerticalView({this.categoryName});
  @override
  _HorizViewState createState() => _HorizViewState();
}

class _HorizViewState extends State<VerticalView> {
  int _selectedIndex = 0;

  _onSelected(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.52,
        width: MediaQuery.of(context).size.height * 0.95,
        decoration: BoxDecoration(
            color: Colors.transparent,
            boxShadow: [
              BoxShadow(
                offset: Offset(0.0, 3.0),
                color: Colors.transparent,
                blurRadius: 10.0,
                spreadRadius: 2,
              ),
            ],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(6.0),
            )),
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: categoryList.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: <Widget>[
                  GestureDetector(
                      onTap: () => _onSelected(index),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 6.5 * SizeConfig.widthMultiplier,
                            vertical: 1.3 * SizeConfig.heightMultiplier),
                        child: Column(
                          children: [
                            Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.18,
                                width: MediaQuery.of(context).size.height * 0.6,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0.00, 3.00),
                                      color:
                                          Color(0xff000000).withOpacity(0.16),
                                      blurRadius: 10,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(14.0),
                                  color: Colors.blue,
                                  border: Border.all(
                                    width: 1.2,
                                    color: Colors.blue,
                                  ),
                                  shape: BoxShape.rectangle,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal:
                                              2.5 * SizeConfig.widthMultiplier,
                                          vertical: 0.03 *
                                              SizeConfig.heightMultiplier),
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.15,
                                        width:
                                            MediaQuery.of(context).size.height *
                                                0.15,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 1.0),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.45,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.13,
                                      child: Text(
                                        "Driver Name\nDriver Phone No.\nDriver License No.\n",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.053),
                                      ),
                                    ),
                                  ],
                                )),
                            Text(
                              categoryList[index].categoryName,
                            ),
                          ],
                        ),
                      )),
                ],
              );
            }),
      ),
    );
  }
}

List<VerticalView> categoryList = [
  VerticalView(
    categoryName: '',
  ),
  VerticalView(
    categoryName: ' ',
  ),
  VerticalView(
    categoryName: ' ',
  ),
  VerticalView(
    categoryName: ' ',
  ),
  VerticalView(
    categoryName: ' ',
  ),
  VerticalView(
    categoryName: '',
  ),
];
