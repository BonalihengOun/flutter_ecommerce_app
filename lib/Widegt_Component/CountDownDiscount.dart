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

  @override
  Widget build(BuildContext context) {
    final hours = _remainingTime.inHours;
    final minutes = _remainingTime.inMinutes.remainder(60);
    final seconds = _remainingTime.inSeconds.remainder(60);

    return Row(
      children: [
        _buildTimeBox(hours.toString().padLeft(2, '0'), 'Hours'),
        _buildColon(),
        _buildTimeBox(minutes.toString().padLeft(2, '0'), 'Minutes'),
        _buildColon(),
        _buildTimeBox(seconds.toString().padLeft(2, '0'), 'Seconds'),
      ],
    );
  }

  Widget _buildTimeBox(String value, String label) {
    return Column(
      children: [
        Container(
          width: 40,
          height: 40,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              value,
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold, color: Dark),
            ),
          ),
        ),
      ],
    );
  }
}

Widget _buildColon() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 5, top: 10, right: 5),
        child: Text(
          ":",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    ],
  );
}
