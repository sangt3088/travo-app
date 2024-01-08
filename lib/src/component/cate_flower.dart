import 'package:final_flutter_goods_manager_app/src/model/flowers.dart';
import 'package:flutter/material.dart';

// import '../model/flowers.dart';
import 'dialog_box.dart';

class CategoriesFlower extends StatelessWidget {
  const CategoriesFlower({
    super.key,
    required this.flower,
  });

  // ignore: prefer_typing_uninitialized_variables
  final Flower flower;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      padding: const EdgeInsets.all(8.0),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(5.0))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 80,
            height: 80,
            child: Image.network('${flower.imageUrl}'),
          ),
          SizedBox(
            width: 150,
            height: 80,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${flower.name}',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF1B1B1B),
                  ),
                ),
                Text(
                  '${flower.note}',
                  style: const TextStyle(
                    fontSize: 18,
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '${flower.price}',
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
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return const DialogBox();
                },
              );
            },
            child: Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                color: Colors.green,
              ),
              child: const Center(
                child: Text(
                  '+',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
