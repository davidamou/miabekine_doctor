import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:miabekinedoctor/screens/authentication/components/choose_file_container.dart';

class RegisterSpeciality extends StatelessWidget {
  const RegisterSpeciality({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Etape 2"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Domaine de specialise",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 20.0),
            TextFormField(
              decoration: const InputDecoration(labelText: "Specialite"),
            ),
            const SizedBox(height: 20.0),
            const Text(
              "Joindre une copie de votre attestation ou diplome de formation",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            ChooseFileContainer(),
            const SizedBox(height: 8.0),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: "Annee d'experience"),
            ),
            const SizedBox(height: 20.0),
            const Text(
              "Joindre une copie de votre attestation de travail ou de stage",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            ChooseFileContainer(),
            const SizedBox(height: 24.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => context.go("/"),
                child: const Text("Suivant"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
