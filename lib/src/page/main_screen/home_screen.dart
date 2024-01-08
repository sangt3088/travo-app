import 'package:flutter/material.dart';

import '../../component/category_modal.dart';
import '../../component/panner_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                width: width,
                height: height * 0.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            showGeneralDialog(
                              context: context,
                              barrierDismissible: false,
                              barrierLabel: "Dialog",
                              barrierColor: Colors.black38,
                              transitionDuration:
                                  const Duration(milliseconds: 800),
                              pageBuilder: (BuildContext buildContext,
                                  Animation animation,
                                  Animation secondaryAnimation) {
                                return Row(
                                  children: <Widget>[
                                    const Expanded(
                                      flex: 4,
                                      child: SizedBox.expand(
                                        child: CategoriesModal(),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: SizedBox.expand(
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color(0x00FFFFFF),
                                            fixedSize: const Size(100, 100),
                                          ),
                                          onPressed: () =>
                                              Navigator.pop(context),
                                          child: const Text('s'),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: const Icon(
                            Icons.list,
                            size: 30,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.energy_savings_leaf,
                              color: Colors.greenAccent,
                              size: 34,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Spliff',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontFamily: AutofillHints.birthday,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.search_outlined,
                          size: 30,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Icon(
                          Icons.heart_broken_outlined,
                          size: 30,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          child: Image.asset('./images/profile.png'),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: width,
              height: height * 0.4,
              // color: Colors.amber,
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  PannerHomeScreen(),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Top Categories',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontFamily: AutofillHints.birthday,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Mark the occassion with these must have products',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontFamily: AutofillHints.birthday,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        width: width * 0.2,
                        height: height * 0.16,
                        color: Colors.amber,
                        child: Image.asset(
                          '/images/vape/vape_1.png',
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Text(
                        'Vapes',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: AutofillHints.birthday,
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/cate');
                    },
                    child: Column(
                      children: [
                        Container(
                          width: width * 0.2,
                          height: height * 0.16,
                          color: Colors.amber,
                          child: Image.asset(
                            '/images/flower/flower_1.png',
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Text(
                          'Flowers',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: AutofillHints.birthday,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        width: width * 0.2,
                        height: height * 0.16,
                        color: Colors.amber,
                        child: Image.asset(
                          '/images/editble/editble_1.png',
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Text(
                        'Edibles',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: AutofillHints.birthday,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
