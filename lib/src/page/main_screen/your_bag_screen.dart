import 'package:final_flutter_goods_manager_app/src/page/main_screen/paid_complete_screen.dart';
import 'package:flutter/material.dart';

import '../../component/cate_your_bag.dart';

class YourBagScreen extends StatelessWidget {
  final result;
  final flowerItem;
  const YourBagScreen(
      {super.key, required this.result, required this.flowerItem});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        width: width,
        height: height,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  'Your bag',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: AutofillHints.birthday,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: width,
              height: 500,
              decoration: BoxDecoration(
                color: Color.fromARGB(102, 217, 217, 217),
              ),
              child: ListView(
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.symmetric(vertical: 10),
                children: [
                  CategoriesYourBag(
                    result: result,
                    flowerItem: flowerItem,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'TOTAL:',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black45,
                    fontWeight: FontWeight.w600,
                    fontFamily: AutofillHints.birthday,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '\$20',
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFF006525),
                    fontWeight: FontWeight.w600,
                    fontFamily: AutofillHints.birthday,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PaidCompleteScreen(),
                  ),
                );
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                width: width,
                height: 50,
                decoration: const BoxDecoration(
                  color: Color(0xFF006525),
                ),
                child: const Center(
                  child: Text(
                    'Create an account',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontFamily: AutofillHints.birthday,
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
