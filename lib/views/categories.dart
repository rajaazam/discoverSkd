import 'package:flutter/material.dart';
import '../models/place_categories_modle.dart';
import '../widget/bottom_Contianer.dart';
import 'detail_page.dart';
import 'home_page.dart';

class Categories extends StatelessWidget {
  //final String name;
  List<PlaceCategoriesModle> list = [];
  Categories({
    required this.list,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          '  List of Menu  ',
          style: TextStyle(color: Colors.white, fontSize: 20),
        )),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (contet) => Home_Page()));
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: SizedBox(
          child: GridView.count(
              shrinkWrap: false,
              primary: false,
              crossAxisCount: 2,
              childAspectRatio: 0.8,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              children: list
                  .map(
                    (e) => BottomContainer(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => DetailPage(
                              image: e.image,
                              name: e.name,
                              number: e.number,
                              address: e.address,
                              description: e.description,
                            ),
                          ),
                        );
                      },
                      image: e.image,
                      number: e.number,
                      name: e.name,
                    ),
                  )
                  .toList()),
        ),
      ),
    );
  }
}
