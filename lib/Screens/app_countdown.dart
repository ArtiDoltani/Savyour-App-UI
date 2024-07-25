import 'dart:async';
import 'package:flutter/material.dart';

class AppCountDown extends StatefulWidget {
  const AppCountDown(
      {super.key, required this.deadline, this.textStyle, this.labelStyle});
  final DateTime deadline;
  final TextStyle? textStyle;
  final TextStyle? labelStyle;

  @override
  State<AppCountDown> createState() => _AppCountDownState();
}

class _AppCountDownState extends State<AppCountDown> {
  late Timer timer;
  Duration duration = const Duration();
  @override
  void initState() {
    calculatedTimeLeft(widget.deadline);
    // this timer object creates new repeating timer
    timer = Timer.periodic(
        const Duration(seconds: 1), (_) => calculatedTimeLeft(widget.deadline));
    super.initState();
  }
  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var textStyle = widget.textStyle ??
        Theme.of(context).textTheme.displayMedium!.copyWith(
              color: Colors.white,
            );
    // var labelStyle = widget.labelStyle ?? Theme.of(context).textTheme.bodyLarge;

    final hours = DefaultTextStyle(
        style: textStyle,
        child: Container(
          width: 40,
          height: 30,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Colors.red),
          child:
              Center(child: Text(duration.inHours.toString().padLeft(2, '0'))),
        ));
    // Minutes
    final minutes = DefaultTextStyle(
        style: textStyle,
        child: Container(
          width: 40,
          height: 30,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Colors.red),
          child: Center(
              child: Text(
                  duration.inMinutes.remainder(60).toString().padLeft(2, '0'))),
        ));
    // Seconds
    final seconds = DefaultTextStyle(
        style: textStyle,
        child: Container(
          width: 40,
          height: 30,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Colors.red),
          child: Center(
              child: Text(
                  duration.inSeconds.remainder(60).toString().padLeft(2, '0'))),
        ));
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              hours,
              // SizedBox(height: 10,width: 10,),
              const Center(
                  child: Text(
                "Hrs",
              ))
            ],
          ),
          Text(":", style: Theme.of(context).textTheme.bodySmall),
          Column(
            children: [minutes, const Text("Mins")],
          ),
          Text(":", style: Theme.of(context).textTheme.bodySmall),
          Column(
            children: [seconds, const Text("Secs")],
          ),
        ],
      ),
    );
  }

  // Creating Method
  void calculatedTimeLeft(DateTime deadline) {
    final seconds = deadline.difference(DateTime.now()).inSeconds;
    setState(() => duration = Duration(seconds: seconds));
  }
}
