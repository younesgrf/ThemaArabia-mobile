import 'package:flutter/material.dart';
import 'signup.dart'; // Importez la page d'inscription
import 'home.dart'; // Importez la page d'accueil

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SizedBox.expand(
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: Container(
              margin: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, // Centrer verticalement
                children: [
                  SizedBox(height: 20),
                  _header(context),
                  SizedBox(height: 20),
                  _inputField(context),
                  SizedBox(height: 20),
                  _loginButton(context),
                  SizedBox(height: 20),
                  _signup(context, context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _header(context) {
    return const Column(
      children: [
        Text(
          "ThemaArabia",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.green),
        ),
        Text("Welcome to our WebSite for Classification"),
      ],
    );
  }

  _inputField(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: "Username",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none,
            ),
            fillColor: Colors.purple.withOpacity(0.1),
            filled: true,
            prefixIcon: const Icon(Icons.person),
          ),
        ),
        const SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            hintText: "Password",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none,
            ),
            fillColor: Colors.purple.withOpacity(0.1),
            filled: true,
            prefixIcon: const Icon(Icons.password),
          ),
          obscureText: true,
        ),
      ],
    );
  }

  _loginButton(context) {
    return ElevatedButton(
      onPressed: () {
        // Ajouter la logique de connexion ici
        // Si la connexion réussit, passer à la page d'accueil
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      },
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        padding: const EdgeInsets.symmetric(vertical: 16),
        backgroundColor: Colors.green,
      ),
      child: const Text(
        "Login",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }

  _signup(context, pageContext) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have an account? "),
        TextButton(
          onPressed: () {
            // Naviguer vers la page d'inscription lorsque "Sign Up" est cliqué
            Navigator.push(
              pageContext,
              MaterialPageRoute(builder: (context) => SignupPage()),
            );
          },
          child: const Text(
            "Sign Up",
            style: TextStyle(color: Colors.green),
          ),
        ),
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}
