import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:training_diet_ui/model/upper_body_workout.dart';

class WorkOutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final today = DateTime.now();

    return Scaffold(
      backgroundColor: const Color(0xFFBA214D),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 16,
              left: 16,
              right: 16,
            ),
            child: Column(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.close,
                      color: Colors.white,
                     )),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: Text(
                    "${DateFormat('EEEE').format(today)},"
                    " ${DateFormat('d MMM').format(today)}",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    "Upper Body",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.access_time,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "60 mins",
                            style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.shutter_speed,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Easy",
                            style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                for (int i = 0; i < upperBody.length; i++)
                  Column(
                    children: [
                      for (int k = 0; k < upperBody[i].length; k++)
                        ListTile(
                          leading: Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: Color(0xff904059),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                )),
                            child: IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                upperBody[i][k].imagePath,
                                color: Colors.white,
                                width: 45,
                                height: 45,
                              ),
                            ),
                          ),
                          title: Text(
                            upperBody[i][k].name,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          ),
                          subtitle: Text(upperBody[i][k].instruction,
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400)),
                        ),
                      SizedBox(height: 20),
                    ],
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
