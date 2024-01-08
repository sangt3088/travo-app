import 'package:flutter/material.dart';

class SlideStartWidget extends StatelessWidget {
  const SlideStartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(.2),
              width: MediaQuery.of(context).size.width,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.leaderboard,
                    color: Colors.greenAccent,
                    size: 20,
                  ),
                  Text(
                    'Spliff',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.w600,
                      fontFamily: AutofillHints.birthday,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Container(
          //       width: 30,
          //       height: 30,
          //       decoration: const BoxDecoration(
          //         borderRadius: BorderRadius.all(Radius.circular(50)),
          //       ),
          //       child: const Icon(
          //         Icons.arrow_back,
          //         size: 24,
          //         color: Colors.black54,
          //       ),
          //     ),
          //     Container(
          //       width: 30,
          //       height: 30,
          //       decoration: const BoxDecoration(
          //         borderRadius: BorderRadius.all(Radius.circular(50)),
          //       ),
          //       child: const Icon(
          //         Icons.arrow_forward,
          //         size: 24,
          //         color: Colors.black54,
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
