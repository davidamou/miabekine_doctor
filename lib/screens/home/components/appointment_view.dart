import 'package:flutter/material.dart';
import 'package:miabekinedoctor/models/appointment.dart';

import '../../../utils/themes/light.dart';
import '../../../widget/avatar.dart';

class AppointmentView extends StatelessWidget {
  final Appointment appointment;

  const AppointmentView({Key? key, required this.appointment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "08:00",
          style: Theme.of(context).textTheme.titleMedium,
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
                    Avatar(
                      radius: 28,
                      url: appointment.patientImage,
                    ),
                    const SizedBox(width: 8.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          appointment.patientName,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 2.0),
                        const Text(
                          "il y a 23min",
                          style: TextStyle(color: Colors.black54),
                        ),
                        const SizedBox(height: 16.0),
                        const Text(
                          "En attente de validation",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                    Checkbox(
                      value: false,
                      onChanged: (value) {},
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
