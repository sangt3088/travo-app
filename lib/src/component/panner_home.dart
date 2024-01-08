import 'package:flutter/material.dart';

class PannerHomeScreen extends StatelessWidget {
  const PannerHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: double.infinity,
      decoration: const BoxDecoration(
        // color: Colors.amber,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        image: DecorationImage(
            image: AssetImage('/images/banner_1.jpg'),
            fit: BoxFit.cover,
            repeat: ImageRepeat.noRepeat),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.leaderboard,
            color: Colors.greenAccent,
            size: 30,
          ),
          Text(
            '50% Off',
            style: TextStyle(
              fontSize: 48,
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontFamily: AutofillHints.birthday,
            ),
          ),
          Text(
            'Everything',
            style: TextStyle(
              fontSize: 48,
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontFamily: AutofillHints.birthday,
            ),
          ),
          Text(
            'with code: sativa 123',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontFamily: AutofillHints.birthday,
            ),
          ),
        ],
      ),
    );
  }
}
