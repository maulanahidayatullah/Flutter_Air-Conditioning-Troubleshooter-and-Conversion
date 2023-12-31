import 'package:bang_tiar/sop/air_handling/prosedurAirHandling.dart';
import 'package:flutter/material.dart';
import 'package:bang_tiar/data/sop/dataAirHandling.dart';

class LangkahAirHandling extends StatelessWidget {
  const LangkahAirHandling({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              // title: Text('Ekspansi'),
              expandedHeight: 300,
              pinned: true,
              floating: true,
              // backgroundColor: Colors.grey,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Air Handling Unite'),
                background: Image.asset(
                  'assets/air_handling.png',
                  // fit: BoxFit.cover,
                ),
              ),
            ),
          ];
        },
        body: Container(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: dataAirHandling.length,
            itemBuilder: (context, langkah) {
              return InkWell(
                onTap: () {
                  if (langkah == 0) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProsedurAirHandling(
                          langkah: langkah,
                        ),
                      ),
                    );
                  }
                },
                child: Card(
                  margin: EdgeInsets.only(left: 10, right: 10, bottom: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  // color: Colors.black,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      dataAirHandling[langkah].title,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
