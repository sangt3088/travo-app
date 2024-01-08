import 'package:final_flutter_goods_manager_app/src/page/main_screen/home_screen.dart';
import 'package:flutter/material.dart';

class PaidCompleteScreen extends StatelessWidget {
  const PaidCompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        width: width,
        height: height,
        decoration: const BoxDecoration(
          color: Color(0xFF0E8201),
        ),
        child: Column(
          children: [
            Center(
              child: SizedBox(
                width: width,
                height: height * 0.8,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.check,
                      size: 80,
                      color: Colors.white,
                    ),
                    Text(
                      'Completed Pay',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: InkWell(
                // onTap: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => const HomeScreen(),
                //     ),
                //   );
                // },
                onTap: () {
                  Navigator.pushNamed(context, '/cate');
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  width: width,
                  height: 60,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  child: const Center(
                    child: Text(
                      'Continue Shopping',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xFF095800),
                        fontWeight: FontWeight.w600,
                        fontFamily: AutofillHints.birthday,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
