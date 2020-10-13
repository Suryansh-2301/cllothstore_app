


import 'dart:ui';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Widget searchfield(){
    return TextField(
      autofocus: true,
      decoration: InputDecoration(
        hintText: "Search",
        prefixIcon: Icon(Icons.search),
        suffixIcon: IconButton(icon: Icon(Icons.close), onPressed: (){
          print("cancel");
        },
        ),
        fillColor: Colors.white,
        filled: true
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                  child: Text("The Custom World"),
                decoration: BoxDecoration(color: Colors.deepOrangeAccent),
              ),
              ListTile(
                leading: Icon(Icons.category),
                title: Text("Categories"),
                onTap: (){

                },
              ),
              ListTile(
                leading: Icon(Icons.language),
                title: Text("Choose Language"),
                onTap: (){

                },
              ),
              ListTile(
                leading: Icon(Icons.folder),
                title: Text("My Orders"),
                onTap: (){

                },
              ),
              ListTile(
                leading: Icon(Icons.card_giftcard),
                title: Text("My Coupons"),
                onTap: (){

                },
              ),
              ListTile(
                leading: Icon(Icons.add_shopping_cart),
                title: Text("My Cart"),
                onTap: (){

                },
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text("My Wishlist"),
                onTap: (){

                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("My Account"),
                onTap: (){

                },
              ),
              const Divider(
                color: Colors.black,
                height: 5,
                thickness: 1,
                indent: 20,
                endIndent: 0,
              ),
              ListTile(
                leading: Icon(Icons.notifications_active),
                title: Text("The Custom World"),
                onTap: (){

                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          title: Text(
            'The Custom World',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.black,
            ),
          ),
          bottom: PreferredSize(child: Container(width: 300.0,child: searchfield(),), preferredSize: Size.square(50.0)),
        ),
        body: Center(

        ),
        bottomNavigationBar: CurvedNavigationBar(
          color: Colors.deepOrangeAccent,
          backgroundColor: Colors.white,
          buttonBackgroundColor: Colors.white,
          height: 50,
          items: <Widget>[
            Icon(Icons.notifications,size: 20,color:Colors.black,),
            Icon(Icons.privacy_tip,size: 20,color:Colors.black,),
            Icon(Icons.home,size: 20,color:Colors.black,),
            Icon(Icons.account_box,size: 20,color:Colors.black,),
            Icon(Icons.add_shopping_cart,size: 20,color:Colors.black,),
          ],
          animationDuration: Duration(
            milliseconds: 200,
          ),
          index: 2,
          animationCurve: Curves.bounceInOut,
          onTap: (index){
            debugPrint("Current index is: $index");
          },
        ),
      ),
    );
  }
}
