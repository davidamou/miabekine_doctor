import 'package:flutter/material.dart';

class DayView extends StatelessWidget {
  const DayView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12.0),
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: const Text("08"),
          ),
          const SizedBox(height: 4.0),
          const Text("Lun"),
        ],
      ),
    );
  }
}
