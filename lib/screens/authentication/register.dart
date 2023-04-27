import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:miabekinedoctor/screens/authentication/components/choose_file_container.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Etape 1"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Veiullez renseigner vos informations personnelles.",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 20.0),
            TextFormField(
              decoration: const InputDecoration(labelText: "Nom"),
            ),
            const SizedBox(height: 8.0),
            TextFormField(
              decoration: const InputDecoration(labelText: "Prénom"),
            ),
            const SizedBox(height: 8.0),
            TextFormField(
              decoration: const InputDecoration(labelText: "Adresse email"),
            ),
            const SizedBox(height: 8.0),
            //Type de piece d'identité
            TextFormField(
              readOnly: true,
              decoration:
                  const InputDecoration(labelText: "Type de pièce d'identité"),
            ),
            const SizedBox(height: 20.0),
            const Text(
              "Joindre une copie de votre pièce d'identité",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            ChooseFileContainer(),
            const SizedBox(height: 24.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => context.push("/register-speciality"),
                child: const Text("Suivant"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
