import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bienvenu, connecter-vous")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: "Adresse email"),
              ),
              const SizedBox(height: 8.0),
              TextFormField(
                decoration: const InputDecoration(labelText: "Mot de passe"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text("Mot de passe oublier"),
                  TextButton(
                    onPressed: null,
                    child: Text("Cliquez ici"),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _logIn,
                  child: const Text("Se connecter"),
                ),
              ),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 1.0,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text("Ou"),
                  ),
                  Expanded(
                    child: Container(
                      height: 1.0,
                      color: Colors.grey.shade300,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/logo-google.svg", width: 28.0,),
                  label: const Text('Se connecter avec Google'),
                ),
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Vous n'avez pas de compte ? "),
                  TextButton(
                    onPressed: () => context.push('/register'),
                    child: const Text("Inscrivez-vous"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _logIn() {}
}
