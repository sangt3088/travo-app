import 'package:flutter/material.dart';

class CategoriesYourBag extends StatelessWidget {
  final result;
  final flowerItem;

  const CategoriesYourBag(
      {super.key, required this.result, required this.flowerItem});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width - 20,
      height: 100,
      padding: const EdgeInsets.all(8.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 60,
            height: 60,
            child: Image.network('{flower.imageUrl}'),
          ),
          SizedBox(
            width: 140,
            height: 80,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${flowerItem.name}',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF1B1B1B),
                  ),
                ),
                Text(
                  '${flowerItem.note}',
                  style: const TextStyle(
                    fontSize: 18,
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '${flowerItem.price}',
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.greenAccent,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            child: SizedBox(
              width: 30,
              height: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      // setState(() {
                      //   _count -= 1;
                      // });
                      // _result = _count;
                      // if (_result <= 0) {
                      //   _result = 0;
                      // }
                    },
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(
                        color: Color(0x60454545),
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      ),
                      child: const Center(
                        child: Text(
                          '-',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    '${result}',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      // setState(() {
                      //   _count += 1;
                      // });
                      // if (_result <= 0 && _count <= 0) {
                      //   _result = 0;
                      // }
                      // _result = _count;
                    },
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(
                        color: Color(0x60454545),
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      ),
                      child: const Center(
                        child: Text(
                          '+',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
