import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.3,
            height: height * 0.1,
            child: const Column(
              children: [
                Icon(
                  Icons.energy_savings_leaf,
                  size: 20,
                  color: Color(0xFF00991C),
                ),
                Text(
                  'Spliff',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w400,
                    fontFamily: AutofillHints.creditCardExpirationDate,
                    color: Color(0xFF00991C),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width * 0.6,
            height: height * 0.3,
            child: const Text(
              'Create your account',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w600,
                fontFamily: AutofillHints.creditCardExpirationDate,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const TextField(
            decoration: InputDecoration(
              // helperText: "EMAIL ADDRESS",
              labelText: "EMAIL ADDRESS",
              helperStyle: TextStyle(
                fontSize: 12,
                color: Colors.white,
                backgroundColor: Color(0xFF00991C),
              ),
              labelStyle: TextStyle(
                fontSize: 12,
                color: Colors.white,
                backgroundColor: Color(0xFF00991C),
              ),
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                width: 1,
                color: Colors.black38,
                style: BorderStyle.solid,
              )),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const TextField(
            obscuringCharacter: "*",
            decoration: InputDecoration(
              // helperText: "PASSWORD",
              labelText: "PASSWORD",
              helperStyle: TextStyle(
                fontSize: 12,
                color: Colors.white,
                backgroundColor: Color(0xFF00991C),
              ),
              labelStyle: TextStyle(
                fontSize: 12,
                color: Colors.white,
                backgroundColor: Color(0xFF00991C),
              ),
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                width: 1,
                color: Colors.black38,
                style: BorderStyle.solid,
              )),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Checkbox(
                value: false,
                onChanged: (value) {},
                checkColor: Colors.black38,
                hoverColor: const Color(0xFF00991C),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: width * 0.7,
                child: const Text(
                  "By creating an account you agree with our terms and conditions",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w300,
                    fontFamily: AutofillHints.creditCardExpirationDate,
                    color: Colors.black38,
                  ),
                  overflow: TextOverflow.clip,
                  maxLines: 2,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              width: width,
              height: height * 0.06,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                color: Color(0xFF00991C),
              ),
              child: const Center(
                child: Text(
                  'Create your account',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    fontFamily: AutofillHints.creditCardExpirationDate,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Already a member?",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w300,
                    fontFamily: AutofillHints.creditCardExpirationDate,
                    color: Colors.black38,
                  ),
                ),
                Text(
                  "Log in",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w300,
                    fontFamily: AutofillHints.creditCardExpirationDate,
                    color: Color(0xFF00991C),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
