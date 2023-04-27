import 'package:flutter/material.dart';
import 'package:miabekinedoctor/screens/home/components/consultation_view.dart';
import 'package:miabekinedoctor/screens/home/components/day_view.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 16),
          child: InkWell(
            onTap: null,
            child: CircleAvatar(),
          ),
        ),
        centerTitle: true,
        title: const Text("27 avril, 2023"),
        titleTextStyle: Theme.of(context).textTheme.titleSmall,
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.notifications_rounded),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bonjour, Dr. Amouzou Koffi",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 2.0),
            Text(
              "Vous avez 16 patients aujourd'hui",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Colors.black54),
            ),
            const SizedBox(height: 24.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i = 0; i < 8; i++) DayView(),
                ],
              ),
            ),
            const SizedBox(height: 24.0),
            for (int i = 0; i < 3; i++)
              const Padding(
                padding: EdgeInsets.only(bottom: 12.0),
                child: ConsultationView(),
              ),
          ],
        ),
      ),
    );
  }
}
