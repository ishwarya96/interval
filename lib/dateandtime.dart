import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:interval_project/numberpicker.dart';
import 'package:intl/intl.dart';

class DateandTime extends StatefulWidget {
  const DateandTime({super.key});

  @override
  State<DateandTime> createState() => _DateandTimeState();
}

class _DateandTimeState extends State<DateandTime> {
  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedTime = TimeOfDay.now();
  String get getDate {
    return DateFormat('dd-MMM-yyyy').format(_selectedDate);
  }

  String get getTime {
    final now = DateTime.now();
    final dateTime = DateTime(
        now.year, now.month, now.day, _selectedTime.hour, _selectedTime.minute);
    return DateFormat('hh:mm a').format(dateTime);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text('Save The Date'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/party-snacks.jpg'),
                fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    child: TextButton(
                      onPressed: () => openDatePicker(),
                      child: Text(
                        "select date",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text('select date - $getDate')
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    child: TextButton(
                      onPressed: () => openTimePicker(),
                      child: Text("select time"),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text('select time  -$getTime')
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => ReservationPage()));
                    },
                    child: Text(
                      "Let's Go",
                      textAlign: TextAlign.start,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> openDatePicker() async {
    final selectedDate = await showDatePicker(
        context: context,
        initialDate: _selectedDate,
        firstDate: DateTime.now(),
        lastDate: DateTime(2050, 12, 1));
    if (selectedDate != null) {
      setState(() {
        _selectedDate = selectedDate;
      });
    }
  }

  Future<void> openTimePicker() async {
    final selectedTime =
        await showTimePicker(context: context, initialTime: _selectedTime);
    if (selectedTime != null) {
      setState(() {
        _selectedTime = selectedTime;
      });
    }
  }
}
