import 'package:flutter/material.dart';

import '../../../utils/themes/light.dart';

class ConsultationView extends StatelessWidget {
  const ConsultationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "08:00",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 24.0),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: defaultBorderRadius,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(radius: 28),
                    const SizedBox(width: 12.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Arianna Grande",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        SizedBox(height: 2.0),
                        Text(
                          "il y a 23min",
                          style: TextStyle(color: Colors.black54),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          "En attente de validation",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
