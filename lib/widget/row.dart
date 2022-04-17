import 'package:flutter/material.dart';
import 'package:negara_g20/models/models.dart';
import 'package:negara_g20/screen/detail.dart';

class ItemCountry extends StatelessWidget {
  final Country country;
  const ItemCountry({Key? key, required this.country}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailScreen(
            country: country,
          );
        }));
      },
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Row(
              children: [
                Image.asset(
                  country.flag,
                  height: 60,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                        child: Text(
                          country.detail,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.flag,
                          ),
                          Icon(
                            Icons.location_city,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
    // BottomNavigationBar(
    //   items: [
    //     BottomNavigationBarItem(
    //       icon: Icon(
    //         Icons.home
    //       )
    //     )
    //   ],
    // );
  }
}
