
import 'package:flutter/material.dart';
class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var mobile =MediaQuery.of(context).size.shortestSide < 600;
    var screen = MediaQuery.of(context).size.width * 0.85;
    return  Scaffold(
      appBar:mobile?AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical:12),
              child: Center(
                child: Container(
                  width:screen,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xFFD6D6D6)),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.menu,color:Colors.black),
                      Center(
                        child: Container(
                          child: Text('Search buildings',style:TextStyle(color: Colors.black)),
                        ),
                      ),
                      Icon(Icons.search,color: Colors.grey,)
                    ],
                  ),
                ),
              ),
          )
        ],
      ):
      AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Container(
              margin: EdgeInsets.only(right: 300),
              width: 340,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text('Search buildings',style: TextStyle(color: Colors.black,fontSize: 16)),
                  ),
                  Icon(Icons.search,color: Colors.grey,)
                ],
              ),
            ),
          )
        ],
      ),
      body: mobile ?
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    child: Text('My Buildings',style: TextStyle(fontSize: 24,color: Colors.black),))
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 150),
              child: Column(
                children: [
                  Container(child: Image.asset('assets/imgs/house.png',fit: BoxFit.cover,width: 80,height: 70,))
                  ,Text('Entre em contato para criar o seu edificio')
                ],
              ),
            ),
          ],
        ),
      ) :
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    child:Text('My Buildings',style: TextStyle(fontSize: 24,color: Colors.black),))
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 150),
              child: Column(
                children: [
                  Container(child: Image.asset('assets/imgs/house.png',fit: BoxFit.cover,width: 160,height: 150,))
                  ,Text('Entre em contato para criar o seu edificio',style: TextStyle(fontSize: 24),)
                ],
              ),
            ),
          ],
        ),
      )
      ,
      floatingActionButton: FloatingActionButton(onPressed: (){
    },child: Icon(Icons.add),),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.dashboard),label: 'Dashboard'),
          BottomNavigationBarItem(icon: Icon(Icons.build),label: 'Buildings'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),label: 'Notifications')
        ],
      ),

    );
  }
}