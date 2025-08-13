import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            const SizedBox(
              height: 12,
            ),
            Image.asset(
              "assets/profile pic.jpg",
              width: 100,
              height: 100,
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              "Welcome Back",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              "I don't know who you are, so it would be nice to know you.",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(137, 68, 73, 7)),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              "Email Address",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(0, 172, 78, 78),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              "Password",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(0, 0, 0, 0)),
            ),
            const SizedBox(
              height: 12,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {}, child: const Text("Forgot Password")),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    width: 280,
                    height: 50,
                    alignment: Alignment.center,
                    /* decoration: const BoxDecoration(
                    border: BorderRadius.circular(10), */
                    color: const Color.fromRGBO(89, 86, 233, 1),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                //mainAxisAlignment: MainAxisAlignment.end,
                const Text("New Here?"),
                TextButton(
                    onPressed: () {}, child: const Text("Create an account"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
