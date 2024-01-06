import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopping_application_ui_challenge_16/shoes.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
);

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: null,
        title: Text("Shoes", style: TextStyle(color: Colors.black, fontSize: 25),),
        actions: [
          IconButton(
              icon: Icon(Icons.notifications_none, color: Colors.black,), onPressed: () {  },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.black,), onPressed: () {  },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    AspectRatio(
                        aspectRatio: 2.2/1,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text("All", style: TextStyle(fontSize: 20),),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2/1,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Center(
                          child: Text("Sneakers", style: TextStyle(fontSize: 17),),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2/1,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Center(
                          child: Text("Football", style: TextStyle(fontSize: 17),),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2/1,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Center(
                          child: Text("Soccer", style: TextStyle(fontSize: 17),),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2/1,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Center(
                          child: Text("Golf", style: TextStyle(fontSize: 17),),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              // makeItem(image: 'assets/images/one.jpg'),
              makeItem(image: 'assets/images/one.jpg', tag: 'red'),
              makeItem(image: 'assets/images/two.jpg', tag: 'blue'),
              makeItem(image: 'assets/images/three.jpg', tag: 'white')

            ],
          ),
        ),
      ),
    );
  }
  Widget makeItem({image, tag}){
    return Hero(
        tag: tag,
        child: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Shoes(image: image, tag: tag)));
          },
          child: Container(
            height: 250,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.only(bottom: 20),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 10,
                  offset: Offset(0,10),
                )
              ]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Sneakers", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),
                            Text("Nike", style: TextStyle(color: Colors.white, fontSize:20),),
                          ],
                        )
                    ),
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Icon(Icons.favorite_border, size: 20,),
                      ),
                    )
                  ],
                ),
                Text("100\$", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
              ],
            ),
          ),
        )
    );
  }
}

