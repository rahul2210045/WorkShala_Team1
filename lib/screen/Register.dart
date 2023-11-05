import 'package:flutter/material.dart';
import 'package:intershipapp/screen/Login.dart';
import 'package:intershipapp/widgets/CustomTextButton.dart';
import 'package:intershipapp/widgets/Customtext.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var emailtext = TextEditingController();
  var password = TextEditingController();
  bool rememberme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          buildheading(context),
          _inputField(context),
          buildelevatedbutton(BuildContext),
          buildtextbutton(BuildContext)
        ],
      ),
    );
  }

  Widget buildheading(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(padding: EdgeInsets.only(top: 100)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: "WORK",
              color: Color.fromRGBO(148, 108, 195, 1),
              fontSize: 40,
              fontStyle: null,
              fontfamily: 'font',
            ),
            CustomText(
              text: "SHALA",
              color: Colors.black,
              fontSize: 40,
              fontStyle: null,
              fontfamily: 'font',
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: "Sign in to your account",
              fontStyle: null,
              color: Colors.black,
              fontSize: 20,
            )
          ],
        )
        // SizedBox(height: 20),
      ],
    );
  }

  _inputField(context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Padding(padding: EdgeInsets.only(top: 50)),
        buildtextfiled(context, emailtext, "Email", false, () {}),
        buildtextfiled(context, password, "Password", true, () {
          setState(() {
            rememberme = true;
          });
        }),

        Row(
          // mainAxisAlignment: MainAxisAlignment.,
          children: [
            Checkbox(
              value: rememberme,
              onChanged: (bool? value) {
                setState(() {
                  rememberme = value ?? false;
                });
              },
            ),
            const Text(
              'Remember Me',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),

        // const SizedBox(height: 10),
        Container(
          width: 400,
          margin: const EdgeInsets.all(15),
          child: ElevatedButton(
            onPressed: () {
              String uname = emailtext.text.toString();
              String passwrd = password.text.toString();

              // print(uname);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Login()));
              Navigator.of(context).pop();
            },
            style: ElevatedButton.styleFrom(
              // shape: const StadiumBorder(),
              shape: const ContinuousRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),

              backgroundColor: const Color.fromRGBO(148, 108, 195, 1),
              minimumSize: const Size(double.infinity, 50),
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
            child: const Text(
              "Sign up",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
                onPressed: () {},
                child: CustomText(
                  text: "Forget Password ?",
                  fontStyle: null,
                  color: Colors.purple,
                  fontSize: 15,
                ))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: "continue with",
              fontStyle: null,
              color: Colors.black,
              fontSize: 20,
            )
          ],
        ),

        // Padding(padding: EdgeInsets.only(bottom: 20)),
        // Container(
        //   child: const CustomText(
        //     text: "If you already registered Log In",
        //     fontStyle: null,
        //     color: Colors.grey,
        //     fontSize: 15,
        //   ),
        // ),
        const Padding(padding: EdgeInsets.only(bottom: 20)),
      ],
    );
  }

  Widget buildtextfiled(BuildContext context, TextEditingController controller,
      String hinttext, bool obscure, VoidCallback onChanged) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: TextField(
        onChanged: (_) {
          onChanged();
        },
        controller: controller,
        obscureText: obscure,
        // enabled: false,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
            fillColor: const Color.fromRGBO(196, 196, 196, 0.2),
            filled: true,
            hintText: hinttext,
            hintStyle: const TextStyle(color: Colors.grey),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              // borderSide: const BorderSide(color: Colors.blue),
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.white)),
            suffixStyle: const TextStyle(color: Colors.indigo)),
      ),
    );
  }

  Widget buildelevatedbutton(BuildContext) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 150,
          margin: const EdgeInsets.all(15),
          child: ElevatedButton.icon(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromRGBO(255, 255, 255, 1),
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
            icon: const FaIcon(FontAwesomeIcons.google, color: Colors.red),
            label: const Text(
              ' Google',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        Container(
          width: 150,
          margin: const EdgeInsets.all(15),
          child: ElevatedButton.icon(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromRGBO(255, 255, 255, 1),
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
            icon: const FaIcon(FontAwesomeIcons.facebook, color: Colors.blue),
            label: const Text(
              ' Facebook',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildtextbutton(BuildContext) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(
          text: "Don’t have an account?",
          fontStyle: null,
          color: Colors.grey,
          fontSize: 18,
        ),
        CustomTextButton(
          onPressed: () {},
          buttonText: "Sign up",
          buttonColor: Colors.white,
          textColor: Colors.purple,
          fontSize: 18,
        )
      ],
    );
  }
}
