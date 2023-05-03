import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
//separamos en elementos
  //const no cambia y var si como let.
    var stars =  Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.red[500],),
        Icon(Icons.star, color: Colors.red[500],),
        Icon(Icons.star, color: Colors.red[500],),
        Icon(Icons.star, color: Colors.black),
        Icon(Icons.star, color: Colors.black,),

      ],
    );
    //separo el texto en otro elemento
    const descTextStyle = TextStyle( style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 20,
    ),);
    
    var rating = Container(
      padding: EdgeInsets.,
    );
    
    
//recipe
    final iconList = DefaultTextStyle(
        style: descTextStyle,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.kitchen, color: Colors.green[500],),
              Text('Prep'),
              Text('25 Min'),
            ],
          )
        )
    );
    
    final leftColumn = Container(
      child: Column(
        children: [
          Text('StrwBerry Pavlova'),
          Text('Description'),
          ratings,
          iconList,
        ],
      ),
    )


    return MaterialApp(
      title: 'Demo Layout',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My layout demo'),
        ),
        body:
          Center(
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 40, 0, 30),
              height: 600,
              child: Card(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 200,
                        child: leftColumn,
                    ),
                    SizedBox(
                      width: 200,
                      child: Image.asset('assets/cloud1.jpg'),
                    ),
                  ],
                ),
              ),
            ),
          )
          // Row(
          //   mainAxisSize: MainAxisSize.min,
          //   children: [
          //    stars,
          //    descTextStyle,
          //   ],
          // )
          // child: Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween, //para row es mainAxisAlugnment
          //   children: [
          //     Expanded(child:  Image.asset('assets/cloud1.jpg')), //con expanded se ajusta automaticamente hasta el maximo ancho
          //     Expanded(flex: 2, child:  Image.asset('assets/cloud2.jpg')), //flex aumenta el tamano
          //    // Image.asset('assets/cloud2.jpg',  height: 90), //una altura fija
          //     Expanded(child:  Image.asset('assets/cloud3.jpg')),
          //   ],
          // )
      //  )
      ),
    );
  }
}
