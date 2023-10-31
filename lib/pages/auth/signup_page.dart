import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool accepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/AuthScreen.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const Text(
              "Sign Up",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "Ready to Begin Your SAT Journey? Sign Up Now ",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black,
                decoration: TextDecoration.none,
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Name',
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Confirm Password',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Checkbox(
                  value: accepted,
                  onChanged: (value) {
                    setState(() {
                      accepted = value!;
                    });
                  },
                ),
                const Text('I accept all Privacy Policy and Terms'),
              ],
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Sign Up'),
            ),
            const SizedBox(height: 16),
            const Text("or"),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              child: const Text('Continue with Google'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              child: const Text('Continue with Apple ID'),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {},
              child: const Text("Already have an account? Log in"),
            ),
          ],
        ),
      ),
    );
  }
}
