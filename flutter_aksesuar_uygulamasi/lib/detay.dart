import 'package:flutter/material.dart';

class Detay extends StatefulWidget {
  @override
  bool tiklamaFav = false;
  bool tiklamaSepet = false;

  var imagePath;

  Detay({this.imagePath});

  _DetayState createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Hero(
            tag: widget.imagePath,
            child: Opacity(
              opacity: 0.8,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(widget.imagePath), fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 4,
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.height - 30,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: <Widget>[

                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 170,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(
                                  widget.imagePath,
                                ),
                                fit: BoxFit.contain,
                              ),),
                          ),
                          ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Kolye", style: TextStyle(fontFamily: 'Font1', fontSize: 40, color: Colors.brown.shade600),),
                            Row(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    IconButton(
                                      icon: Icon(Icons.favorite_border),
                                      iconSize: 40,
                                      color: widget.tiklamaFav == false
                                          ? Colors.grey.shade300
                                          : Colors.deepOrange.shade400,
                                      onPressed: (){
                                        setState(() {
                                          widget.tiklamaFav== true ? widget.tiklamaFav=false : widget.tiklamaFav =true;
                                        });
                                      },
                                    ),
                                    SizedBox(height: 10,),
                                    Text("Favorilere Ekle", style: TextStyle(fontSize: 20, fontFamily: "font3", color: Colors.brown.shade200 ),)
                                  ],
                                ),
                                SizedBox(width: 20,),
                                Column(
                                  children: <Widget>[
                                    IconButton(
                                      icon: Icon(Icons.shopping_cart_outlined),
                                      iconSize: 40,
                                      color: widget.tiklamaSepet == false
                                          ? Colors.grey.shade300
                                          : Colors.green,
                                      onPressed: (){
                                        setState(() {
                                          widget.tiklamaSepet== true ? widget.tiklamaSepet=false : widget.tiklamaSepet =true;
                                        });
                                      },
                                    ),
                                    SizedBox(height: 10,),
                                    Text("Sepete Ekle", style: TextStyle(fontSize: 20, fontFamily: "font3", color: Colors.brown.shade200 ),)
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        ],
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

}
