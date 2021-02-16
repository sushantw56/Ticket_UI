import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

class Ticket extends StatefulWidget {
  @override
  _TicketState createState() => _TicketState();
}

class _TicketState extends State<Ticket> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Stack(
            children: [
              Align(
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: 350,
                  height: 450,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 120,
                            height: 25,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                border: Border.all(color: Colors.green)),
                            child: Center(
                              child: Text(
                                "Business Class",
                                style: TextStyle(color: Colors.green),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "SLM",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8, right: 8),
                                child: Icon(
                                  Icons.flight_takeoff,
                                  color: Colors.red,
                                ),
                              ),
                              Text(
                                "BTL",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          "Flight Ticket",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 2),
                                  child: Text("Passangers",
                                      style: TextStyle(color: Colors.black38)),
                                ),
                                Text(
                                  "Ilona",
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(bottom: 2, top: 12),
                                  child: Text("Flight",
                                      style: TextStyle(color: Colors.black38)),
                                ),
                                Text(
                                  "76836A45",
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(bottom: 2, top: 12),
                                  child: Text("Class",
                                      style: TextStyle(color: Colors.black38)),
                                ),
                                Text(
                                  "Business",
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 2),
                                  child: Text("Date",
                                      style: TextStyle(color: Colors.black38)),
                                ),
                                Text(
                                  "24-12-2018",
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(bottom: 2, top: 12),
                                  child: Text("Gate",
                                      style: TextStyle(color: Colors.black38)),
                                ),
                                Text(
                                  "66B",
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(bottom: 2, top: 12),
                                  child: Text("Seat",
                                      style: TextStyle(color: Colors.black38)),
                                ),
                                Text(
                                  "21B",
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Center(
                          child: Container(
                            width: 200,
                            height: 60,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/Barcode.jpg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Center(
                          child: Text("9824 0972 1742 1298"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Center(
                          child: CircularCountDownTimer(
                            duration: 16,
                            initialDuration: 0,
                            controller: CountDownController(),
                            width: 25,
                            height: 25,
                            ringColor: Colors.black,
                            fillColor: Colors.transparent,
                            backgroundColor: Colors.transparent,
                            textStyle: TextStyle(
                              fontSize: 13.0,
                              color: Colors.black,
                            ),
                            textFormat: CountdownTextFormat.S,
                            isReverse: true,
                            isTimerTextShown: true,
                            autoStart: true,
                            onComplete: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(90)),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(90)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
