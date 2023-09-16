import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_sneaker_shop_ecommerce/constants/colors.dart';

class CountdownTimerWidget extends StatefulWidget {
  final DateTime targetTime;

  CountdownTimerWidget({required this.targetTime});

  @override
  _CountdownTimerWidgetState createState() => _CountdownTimerWidgetState();
}

class _CountdownTimerWidgetState extends State<CountdownTimerWidget> {
  late Timer _timer;
  Duration _remainingTime = Duration();

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), _updateTimer);
  }

  void _updateTimer(Timer timer) {
    final currentTime = DateTime.now();
    final difference = widget.targetTime.difference(currentTime);
    if (difference.inSeconds <= 0) {
      _timer.cancel();
    } else {
      setState(() {
        _remainingTime = difference;
      });
    }
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  Widget _buildTimeBox(String value, String label) {
    return Column(
      children: [
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: Light,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              value,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Dark,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 9,
              color: Colors.black,
              fontFamily: 'NiraRegular',
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildColon() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Text(
            ":",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Dark,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final hours = _remainingTime.inHours.toString().padLeft(2, '0');
    final minutes =
        _remainingTime.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds =
        _remainingTime.inSeconds.remainder(60).toString().padLeft(2, '0');

    return Row(
      children: [
        _buildTimeBox(hours, 'Hours'),
        SizedBox(
          width: 5,
        ),
        _buildColon(),
        SizedBox(
          width: 5,
        ),
        _buildTimeBox(minutes, 'Minutes'), // Add labels here
        SizedBox(
          width: 5,
        ),
        _buildColon(),
        SizedBox(
          width: 5,
        ),
        _buildTimeBox(seconds, 'Seconds'), // Add labels here
      ],
    );
  }
}
