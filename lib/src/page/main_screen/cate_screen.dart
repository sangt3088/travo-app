import 'package:final_flutter_goods_manager_app/src/model/flowers.dart';
import 'package:final_flutter_goods_manager_app/src/page/main_screen/detail_screen.dart';
import 'package:flutter/material.dart';

import '../../component/add_button.dart';
import '../../component/cate_accessories.dart';
import '../../component/cate_edible.dart';
import '../../component/cate_extract.dart';
import '../../component/cate_flower.dart';
import '../../component/cate_header.dart';
import '../../component/cate_vapes.dart';
import '../../controller/flower_controller.dart';
import '../../repository/flower_repository.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    // dependentcy ịnection
    var flowerController = FlowerController(FlowerRepository());
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(4.0),
              child: CategoryHeaderAppbar(),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: DefaultTabController(
                initialIndex: 1,
                length: 5,
                child: Scaffold(
                  appBar: const TabBar(
                    indicatorColor: Color(0xFF006919),
                    indicatorWeight: 3,
                    labelColor: Color(0xFF006919),
                    unselectedLabelColor: Colors.grey,
                    labelStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    tabs: [
                      Text('Flowers'),
                      Text('Vapes'),
                      Text('Extracts'),
                      Text('Editbles'),
                      Text('Accessory'),
                    ],
                  ),
                  body: TabBarView(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.7,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 20),
                        decoration: const BoxDecoration(
                            color: Color(0xFFE4E4E4),
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0))),
                        child: Column(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height:
                                  MediaQuery.of(context).size.height * 0.7 - 30,
                              child: FutureBuilder(
                                future: flowerController.fetchFlowerData(),
                                builder: (context, snapshot) {
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    return const Center(
                                      child: CircularProgressIndicator(),
                                    );
                                  }
                                  if (snapshot.hasError) {
                                    return const Center(
                                      child: Text('Error'),
                                    );
                                  }
                                  return ListView.builder(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10.0),
                                    itemCount: snapshot.data?.length,
                                    itemBuilder: (context, index) {
                                      var flower = snapshot.data?[index];
                                      return InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  DetailCateScreen(
                                                flower: flower,
                                              ),
                                            ),
                                          );
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10),
                                          child: CategoriesFlower(
                                            flower: flower!,
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                            // const Row(
                            //   mainAxisAlignment: MainAxisAlignment.end,
                            //   children: [
                            //     AddButton(),
                            //   ],
                            // ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.7,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 20),
                        decoration: const BoxDecoration(
                            color: Color(0xFFE4E4E4),
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0))),
                        child: Column(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height:
                                  MediaQuery.of(context).size.height * 0.7 - 30,
                              child: ListView(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              DetailCateScreen(
                                            flower: null,
                                          ),
                                        ),
                                      );
                                    },
                                    child: const CategoriesVapes(),
                                  ),
                                ],
                              ),
                            ),
                            // const Row(
                            //   mainAxisAlignment: MainAxisAlignment.end,
                            //   children: [
                            //     AddButton(),
                            //   ],
                            // ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.7,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 20),
                        decoration: const BoxDecoration(
                            color: Color(0xFFE4E4E4),
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0))),
                        child: Column(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height:
                                  MediaQuery.of(context).size.height * 0.7 - 30,
                              child: ListView(
                                children: const [
                                  CategoriesExtracts(),
                                ],
                              ),
                            ),
                            // const Row(
                            //   mainAxisAlignment: MainAxisAlignment.end,
                            //   children: [
                            //     AddButton(),
                            //   ],
                            // ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.7,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 20),
                        decoration: const BoxDecoration(
                            color: Color(0xFFE4E4E4),
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0))),
                        child: Column(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height:
                                  MediaQuery.of(context).size.height * 0.7 - 30,
                              child: ListView(
                                children: const [
                                  CategoriesEdible(),
                                ],
                              ),
                            ),
                            // const Row(
                            //   mainAxisAlignment: MainAxisAlignment.end,
                            //   children: [
                            //     AddButton(),
                            //   ],
                            // ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.7,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 20),
                        decoration: const BoxDecoration(
                            color: Color(0xFFE4E4E4),
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0))),
                        child: Column(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height:
                                  MediaQuery.of(context).size.height * 0.7 - 30,
                              child: ListView(
                                children: const [
                                  CategoriesAccessories(),
                                ],
                              ),
                            ),
                            // const Row(
                            //   mainAxisAlignment: MainAxisAlignment.end,
                            //   children: [
                            //     AddButton(),
                            //   ],
                            // ),
                          ],
                        ),
                      ),
                    ],
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
