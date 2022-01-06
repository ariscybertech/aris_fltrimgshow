import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:photo_view/photo_view.dart';
import 'package:showing_image/imageGallery.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Implement Image Flutter '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          _imageShow(),
          _imageZoomableInline(),
          Expanded(
            child: ImageGallery(),
          )
        ]
      )
     
    );
  }

  Widget _imageShow(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        //image asset crircle
        Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text("Image From Asset", style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text("Image"),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        image: new DecorationImage(
                          fit: BoxFit.cover,
                          image: new AssetImage("assets/girls.jpg")
                        )
                      ),
                    ),
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text("Circle"),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          fit: BoxFit.cover,
                          image: new AssetImage("assets/girls.jpg")
                        ),
                      ),
                    ),
                  ],
                ),
                
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text("Circle Border"),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          fit: BoxFit.cover,
                          image: new AssetImage("assets/girls.jpg")
                        ),
                        border: Border.all(
                          width: 2,
                          color: Colors.blueAccent
                        ),
                      ),
                    ),
                  ],
                ),
                
              ],
            )
            
          ]
        ),
        
        //image url internet
        Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 10),
              child: Text("Image From Internet", style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text("Image"),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        image: new DecorationImage(
                          fit: BoxFit.cover,
                          image: new NetworkImage(
                            'https://picsum.photos/250?image=9',
                          )
                        )
                      ),
                    ),
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text("Circle"),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          fit: BoxFit.cover,
                          image: new NetworkImage(
                            'https://picsum.photos/250?image=9',
                          )
                        ),
                      ),
                    ),
                  ],
                ),
                
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text("Circle Border"),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          fit: BoxFit.cover,
                          image: new NetworkImage(
                            'https://picsum.photos/250?image=9',
                          )
                        ),
                        border: Border.all(
                          width: 2,
                          color: Colors.blueAccent
                        ),
                      ),
                    ),
                  ],
                ),
                
              ],
            )
            
          ]
        ),

        //Image From SVG
        Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 10),
              child: Text("Image SVG Asset", style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text("Image"),
                    ),
                    SvgPicture.asset(
                      "assets/homer-simpson.svg",
                      height: 70,
                      width: 70,
                    ),
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text("Circle"),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        "assets/homer-simpson.svg",
                      ),
                    ),
                  ],
                ),
                
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text("Circle Border"),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 2,
                          color: Colors.blueAccent
                        ),
                      ),
                      child: SvgPicture.asset(
                        "assets/homer-simpson.svg",
                      ),
                    ),
                    
                  ],
                ),
                
              ],
            )
            
          ]
        ),

        //image avatar
        Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 10),
              child: Text("Image Cirlce Avatar", style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text("Avatar"),
                    ),
                    CircleAvatar(
                      radius: 55,
                      backgroundColor: Color(0xffFDCF09),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/girls.jpg'),
                      ),
                    ),
                    
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text("Avatar with Text"),
                    ),
                    CircleAvatar(
                      radius: 55,
                      backgroundColor: Color(0xffFDCF09),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/girls.jpg'),
                        child: Text("AD"),
                      ),
                      
                    ),
                  ],
                ),
                
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text("Text"),
                    ),
                    CircleAvatar(
                      radius: 55,
                      backgroundColor: Color(0xffFDCF09),
                      child: CircleAvatar(
                        radius: 50,
                        child: Text("AD"),
                      ),
                    ),
                  ],
                ),
                
              ],
            )
            
          ]
        ),

      ],
    );
  }

  Widget _imageZoomableInline(){
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Text("Image Zoomable", style: TextStyle(fontWeight: FontWeight.bold),),
          Text("Inline"),
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 20.0,
            ),
            height: 200.0,
            child: ClipRect(
              child: PhotoView(
                imageProvider: const AssetImage("assets/mountain.jpg"),
                maxScale: PhotoViewComputedScale.covered * 3.0,
                minScale: PhotoViewComputedScale.contained * 0.8,
                initialScale: PhotoViewComputedScale.contained,
              ),
            ),
          ),

          
        ],
      ),
    );
    
    
    
    
  }
}
