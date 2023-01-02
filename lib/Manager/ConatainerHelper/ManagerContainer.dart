import 'package:flutter/material.dart';

import '../../constant/color.dart';

class ManagerContainer extends StatefulWidget {
  final Color fontColor;
  final Color backgrondColor;
  const ManagerContainer(
      {Key? key, required this.fontColor, required this.backgrondColor})
      : super(key: key);


  @override
  _ManagerContainerState createState() => _ManagerContainerState();
}

class _ManagerContainerState extends State<ManagerContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            widget.backgrondColor.withOpacity(0.5),
            widget.backgrondColor.withOpacity(0.5),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          border: Border.all(
            color: const Color(0x282019).withOpacity(0.2),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding:
          const EdgeInsets.only(left: 8.0, right: 2, top: 2, bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Stack(children: [
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                          radius: 20,
                          backgroundColor: widget.fontColor.withOpacity(0.9)),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Operator name",
                        style: TextStyle(
                          // #FED457
                            fontWeight: FontWeight.w600,
                            color: widget.fontColor.withOpacity(0.9),
                            fontSize: 20),
                      ),
                    ],
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Client name : dhirax ",
                  style: TextStyle(
                    // #FED457
                      fontWeight: FontWeight.w600,
                      // color: Color(0xFED457),
                      color: widget.fontColor.withOpacity(0.9),
                      fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Tasks Name : ABC XYZ ",
                  style: TextStyle(
                    // #FED457
                      fontWeight: FontWeight.w600,
                      // color: Color(0xFED457),
                      color: widget.fontColor.withOpacity(0.9),
                      fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Project Name :  abc xyz ",
                  style: TextStyle(
                    // #FED457
                      fontWeight: FontWeight.w600,
                      // color: Color(0xFED457),
                      color: widget.fontColor.withOpacity(0.9),
                      fontSize: 14),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  child: Text(
                    "Description : \n   now theres a best way to achieve this, its ListTile."
                        "it has leading property for left side, and title and subtitle,"

                        " it has leading property for left side, and title and subtitle, and then for right side widgets it has trailing property.",
                    style: TextStyle(color: widget.fontColor.withOpacity(0.8)),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
           widget.backgrondColor == redColor ?  Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget> [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      // width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            widget.fontColor.withOpacity(0.7),
                            widget.fontColor.withOpacity(0.7)
                            // Colors.teal[200],
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(5, 5),
                            blurRadius: 10,
                          )
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          'Approove',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      // width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            widget.fontColor.withOpacity(0.7),
                            widget.fontColor.withOpacity(0.7)
                            // Colors.teal[200],
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(5, 5),
                            blurRadius: 10,
                          )
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          '  Reject ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ) : Container(
             child: Text("Task Completing....."),
           ),

            ],
          ),
        ),
      ),
    );
  }
}
