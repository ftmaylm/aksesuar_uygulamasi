import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'detay.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();

}

class _AnaSayfaState extends State<AnaSayfa> with SingleTickerProviderStateMixin {
  @override


  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();
  }

  var formKey = GlobalKey<FormState>();
  TabController tabController;
  String imagePath;



  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: Material(
        color: Colors.brown.shade100,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        child: TabBar(controller: tabController,tabs: [
          Tab(icon: Icon(Icons.home, color: Colors.grey.shade100,size:30)),
          Tab(icon: Icon(Icons.favorite, color: Colors.grey.shade100,size:30)),
          Tab(icon: Icon(Icons.search, color: Colors.grey.shade100,size:30)),
          Tab(icon: Icon(Icons.person, color: Colors.grey.shade100,size:30)),
        ], ),

      ),



      appBar: AppBar(
        title: Text(
          "Accessories",
          style: TextStyle(
              fontFamily: 'font1',
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.brown.shade900),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined),
            onPressed: () {},
            color: Colors.grey,
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 5),
            color: Colors.transparent,
            height: 150,
            width: double.infinity,
            child: ListView(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                listeElemani("images/kolye1.jpeg"),
                SizedBox(
                  width: 5,
                ),
                listeElemani("images/kupe2.jpeg"),
                SizedBox(
                  width: 5,
                ),
                listeElemani("images/yuzuk1.jpeg"),
                SizedBox(
                  width: 5,
                ),
                listeElemani("images/bileklik1.jpeg"),
                SizedBox(
                  width: 5,
                ),
                listeElemani("images/toka1.jpeg"),
                SizedBox(
                  width: 5,
                ),
                listeElemani("images/gozluk1.jpeg"),
                SizedBox(
                  width: 5,
                ),
                listeElemani("images/saat2.jpeg"),
                SizedBox(
                  width: 5,
                ),
                listeElemani("images/takim1.jpg"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              color: Colors.white54.withAlpha(220),
              child: Container(
                height: 580,
                width: double.infinity,
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Center(
                              child: Text(
                            "2020'nin en şık kolyeleri",
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.brown.withAlpha(500),
                                fontFamily: 'font1'),
                          )),
                        ]),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        InkWell(
                          onTap: (){
                           imagePath = 'images/kolye3.1.jpeg';
                           detaySayfasinaGit(imagePath);
                          },
                          child: Hero(
                            tag: 'images/kolye3.1.jpeg',
                            child: Container(
                              height: 400,
                              width: (MediaQuery.of(context).size.width - 30) / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage('images/kolye3.1.jpeg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            InkWell(
                              onTap: (){
                                imagePath = 'images/kolye1.jpeg';
                                detaySayfasinaGit(imagePath);
                              },
                              child: Hero(
                                tag: 'images/kolye1.jpeg',
                                child: Container(
                                  height: 200,
                                  width:
                                      (MediaQuery.of(context).size.width - 110) / 2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage('images/kolye1.jpeg'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            InkWell(
                              onTap: (){
                                imagePath = 'images/kolye2.jpeg';
                                detaySayfasinaGit(imagePath);
                              },
                              child: Hero(
                                tag:'images/kolye2.jpeg',
                                child: Container(
                                  height: 200,
                                  width:
                                      (MediaQuery.of(context).size.width - 110) / 2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage('images/kolye2.jpeg'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),

                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              color: Colors.white54.withAlpha(220),
              child: Container(
                height: 580,
                width: double.infinity,
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Center(
                              child: Text(
                            "Kulağımıza Küpe Olsun",
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.brown.withAlpha(500),
                                fontFamily: 'font1'),
                          )),
                        ]),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              height: 200,
                              width:
                                  (MediaQuery.of(context).size.width - 100) / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage('images/kupe2.jpeg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 200,
                              width:
                                  (MediaQuery.of(context).size.width - 100) / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage('images/kupe3.jpeg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 400,
                          width: (MediaQuery.of(context).size.width - 50) / 2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage('images/kupe1.jpeg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    FlatButton(
                      child: Text(
                        "Detaylar için tıkla",
                        style: TextStyle(
                          fontFamily: 'font1',
                          fontSize: 25,
                        ),
                      ),
                      height: 30,
                      minWidth: 30,
                      textColor: Colors.brown,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              color: Colors.white54.withAlpha(220),
              child: Container(
                height: 580,
                width: double.infinity,
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Center(
                              child: Text(
                            "Yüzük Modası",
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.brown.withAlpha(500),
                                fontFamily: 'font1'),
                          )),
                        ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 400,
                          width: (MediaQuery.of(context).size.width - 30) / 2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage('images/yuzuk3.jpeg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              height: 200,
                              width:
                                  (MediaQuery.of(context).size.width - 100) / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage('images/yuzuk1.jpeg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 200,
                              width:
                                  (MediaQuery.of(context).size.width - 100) / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage('images/yuzuk2.jpeg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    FlatButton(
                      child: Text(
                        "Detaylar için tıkla",
                        style: TextStyle(
                          fontFamily: 'font1',
                          fontSize: 25,
                        ),
                      ),
                      height: 30,
                      minWidth: 30,
                      textColor: Colors.brown,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              color: Colors.white54.withAlpha(220),
              child: Container(
                height: 580,
                width: double.infinity,
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Center(
                              child: Text(
                            "Bilekliklerimiz de hazır",
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.brown.withAlpha(500),
                                fontFamily: 'font1'),
                          )),
                        ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 400,
                          width: (MediaQuery.of(context).size.width - 30) / 2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage('images/bileklik3.jpeg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              height: 200,
                              width:
                                  (MediaQuery.of(context).size.width - 100) / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage('images/bileklik1.jpeg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 200,
                              width:
                                  (MediaQuery.of(context).size.width - 100) / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage('images/bileklik2.jpeg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    FlatButton(
                      child: Text(
                        "Detaylar için tıkla",
                        style: TextStyle(
                          fontFamily: 'font1',
                          fontSize: 25,
                        ),
                      ),
                      height: 30,
                      minWidth: 30,
                      textColor: Colors.brown,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              color: Colors.white54.withAlpha(220),
              child: Container(
                height: 580,
                width: double.infinity,
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Center(
                              child: Text(
                            "Başımızın Tacı Tokalar",
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.brown.withAlpha(500),
                                fontFamily: 'font1'),
                          )),
                        ]),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              height: 200,
                              width:
                                  (MediaQuery.of(context).size.width - 75) / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage('images/toka4.jpeg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 200,
                              width:
                                  (MediaQuery.of(context).size.width - 75) / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage('images/toka1.jpeg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 400,
                          width: (MediaQuery.of(context).size.width - 50) / 2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage('images/toka3.jpeg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    FlatButton(
                      child: Text(
                        "Detaylar için tıkla",
                        style: TextStyle(
                          fontFamily: 'font1',
                          fontSize: 25,
                        ),
                      ),
                      height: 30,
                      minWidth: 30,
                      textColor: Colors.brown,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              color: Colors.white54.withAlpha(220),
              child: Container(
                height: 580,
                width: double.infinity,
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Center(
                              child: Text(
                            "Işığımız Gözümüzü Almasın",
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.brown.withAlpha(500),
                                fontFamily: 'font1'),
                          )),
                        ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 400,
                          width: (MediaQuery.of(context).size.width - 30) / 2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage('images/gozluk1.jpeg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              height: 200,
                              width:
                                  (MediaQuery.of(context).size.width - 100) / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage('images/gozluk2.jpeg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 200,
                              width:
                                  (MediaQuery.of(context).size.width - 100) / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage('images/gozluk3.jpeg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    FlatButton(
                      child: Text(
                        "Detaylar için tıkla",
                        style: TextStyle(
                          fontFamily: 'font1',
                          fontSize: 25,
                        ),
                      ),
                      height: 30,
                      minWidth: 30,
                      textColor: Colors.brown,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  listeElemani(String imagePath) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover),
              ),
            ),
          ],
        ),
        // SizedBox(width: 10,),
        /* Container(
          key: formKey,
          height: 25,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.brown.shade300,
          ),
          child: Center(child:  ),

        ), */

        FlatButton(
          child: Text(
            "Detay",
            style: TextStyle(
                fontSize: 20, color: Colors.brown, fontFamily: 'font3'),
          ),
          onPressed: () {

          },
          height: 5,
          minWidth: 5,
        ),
      ],
    );
  }

  detaySayfasinaGit(String imagePth) {

    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Detay(imagePath: imagePath,)));
  }

}
