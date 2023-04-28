import 'package:flutter/material.dart';
import 'package:miabekinedoctor/models/appointment.dart';
import 'package:miabekinedoctor/screens/home/components/appointment_view.dart';
import 'package:miabekinedoctor/screens/home/components/calendar.dart';
import 'package:miabekinedoctor/widget/avatar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var appointments = [
      Appointment(
        patientName: "Alice Morro",
        date: DateTime.now(),
        patientImage:
        "https://img.freepik.com/psd-gratuit/illustration-3d-personne-lunettes_23-2149436185.jpg?size=626&ext=jpg&ga=GA1.2.986361167.1680360118&semt=robertav1_2_sidr",
      ),
      Appointment(
        patientName: "Fabio Anna",
        date: DateTime.now(),
        patientImage:
        "https://img.freepik.com/psd-gratuit/illustration-3d-personne-chauve_23-2149436183.jpg?t=st=1682687572~exp=1682688172~hmac=c8f5653acfc29df31d8eddb737fc8266ae9246a210240805d9065f6bae9fa261",
      ),
      Appointment(
        patientName: "Ruben Ativo",
        date: DateTime.now(),
        patientImage:
        "https://img.freepik.com/psd-gratuit/illustration-3d-personne-lunettes-soleil_23-2149436200.jpg",
      ),
    ];

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            leading: Container(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                borderRadius: BorderRadius.circular(64.0),
                onTap: () {},
                child: const Avatar(

                    url:
                    "https://img.freepik.com/photos-premium/venez-me-voir-pour-etat-sante-impeccable-photo-jeune-medecin-prenant-notes-son-bureau_590464-66355.jpg?size=626&ext=jpg&ga=GA1.2.986361167.1680360118&semt=robertav1_2_sidr"),
              ),
            ),
            centerTitle: true,
            title: const Text("avril, 2023"),
            titleTextStyle: Theme
                .of(context)
                .textTheme
                .titleSmall,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications_rounded),
                ),
              )
            ],
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  Text(
                    "Bonjour, Dr. Summe Koffi",
                    style: Theme
                        .of(context)
                        .textTheme
                        .titleLarge,
                  ),
                  const SizedBox(height: 2.0),
                  Text(
                    "Vous avez 16 patients aujourd'hui",
                    style: Theme
                        .of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(color: Colors.black54),
                  ),
                  const SizedBox(height: 24.0),
                  const Calendar(dateSelected: 0),
                  const SizedBox(height: 24.0),
                  ...appointments.map(
                        (appointment) =>
                        Padding(
                          padding: const EdgeInsets.only(bottom: 12.0),
                          child: AppointmentView(appointment: appointment),
                        ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
