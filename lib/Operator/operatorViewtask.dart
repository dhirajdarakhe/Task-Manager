import 'dart:io';
import 'package:flutter/material.dart';
import 'package:intership/Manager/ConatainerHelper/ManagerContainer.dart';
import 'package:intership/Manager/managerProfile.dart';
import 'package:intership/Operator/ContainerHelper/AssignedContainer.dart';
import 'package:intership/Operator/ContainerHelper/ReassignedContainer.dart';
import 'package:intership/Operator/operatorProfile.dart';
import 'package:intership/constant/color.dart';
import 'package:intership/Manager/ConatainerHelper/ClientContainer.dart';

class OperatorVIewTasks extends StatefulWidget {
  const OperatorVIewTasks({Key? key}) : super(key: key);

  @override
  _OperatorVIewTasksState createState() => _OperatorVIewTasksState();
}

class _OperatorVIewTasksState extends State<OperatorVIewTasks> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: greyColor.withOpacity(0.1),
          appBar: AppBar(
            backgroundColor: Colors.grey[200],
            shadowColor: Colors.white,
            title: const Center(
                child: Text(
              "Tasks",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            )),
            elevation: 0.0,
            leading: Builder(builder: (BuildContext context) {
              return Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: IconButton(
                    icon: Image.asset("assets/images/bigmouth_icon.png"),
                    iconSize: 70,
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    }),
              );
            }),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: IconButton(
                    icon: Icon(
                      Icons.circle_sharp,
                      size: 40,
                      color: greyColor.withOpacity(0.9),
                    ),
                    onPressed: () => {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => OperatorProfile()))
                        }),
              )
            ],
          ),
          body: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: 45,
                  width: 390,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(25.0)),
                  child: TabBar(
                    indicator: BoxDecoration(
                        color: Colors.grey[500],
                        borderRadius: BorderRadius.circular(25.0)),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    tabs: const [
                      Tab(
                        text: 'Assigned Tasks',
                      ),
                      Tab(
                        text: 'ReAssigned Tasks',
                      )
                    ],
                  ),
                ),
                Expanded(
                    child: TabBarView(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: const <Widget>[
                          AssignedContainer(
                            fontColor: greyColor,
                            backgrondColor: greenColor,
                          ),
                          AssignedContainer(
                            fontColor: greyColor,
                            backgrondColor: blueColor,
                          ),
                          AssignedContainer(
                            fontColor: greyColor,
                            backgrondColor: greenColor,
                          ),
                          AssignedContainer(
                            fontColor: greyColor,
                            backgrondColor: blueColor,
                          )
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: const <Widget>[
                          ReassignedContainer(
                            fontColor: greyColor,
                            backgrondColor: redColor,
                          ),
                          ReassignedContainer(
                            fontColor: greyColor,
                            backgrondColor: blueColor,
                          ),
                          ReassignedContainer(
                            fontColor: greyColor,
                            backgrondColor: redColor,
                          ),
                          ReassignedContainer(
                            fontColor: greyColor,
                            backgrondColor: redColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ))
              ],
            ),
          )),
    );
  }
}
