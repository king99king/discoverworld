import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class MyApp33 extends StatelessWidget {

// This widget is the root
// of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PageView',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  PageController controller=PageController();
  List<Widget> _list=<Widget>[
    new Center(child:new Pages(text: "Page 1",)),
    new Center(child:new Pages(text: "Page 2",)),
    new Center(child:new Pages(text: "Page 3",)),
    new Center(child:new Pages(text: "Page 4",))
  ];
  int _curr=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
        child:Container(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Text('Symptoms of autism:\n'
          'Symptoms vary from child to child, but include:\n'
              ),
              ),
              SizedBox(height: 10,),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(10),
                child:PageView.builder(
                  itemCount:_list.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                        color: Colors.red,
                       child: Text('Hello')
                      ),
                    );
                  },
          scrollDirection: Axis.horizontal,
          // reverse: true,
          physics: BouncingScrollPhysics(),
          controller: controller,
          onPageChanged: (num){
            setState(() {
              _curr=0;
            });
          },
        ),  ))
            ],
          )
    ))
    );
  }
}

class Pages extends StatelessWidget {
  final text;
  Pages({this.text});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            Container(
              width: double.infinity,
              height: 600,
              color: Colors.grey,
            child:Text(text,textAlign: TextAlign.center,style: TextStyle(
                fontSize: 30,fontWeight:FontWeight.bold),),)
          ]
      ),
    );
  }
}
