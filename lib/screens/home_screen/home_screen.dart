import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('Home',style: TextStyle(color: Colors.black,fontSize: 17.0),),
        // centerTitle: true,
        actions: [
          CircleAvatar(
            radius: 12.0,
            backgroundColor: Color(0xffd4d181),
            child: Icon(Icons.search,size: 17.0,color: Colors.black,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
                radius: 12.0,
                backgroundColor: Color(0xffd4d181),
              child: Icon(Icons.shopping_bag_outlined,size: 17.0,color: Colors.black,),
            ),
          ),
        ],
        backgroundColor: Color(0xffd6b738),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
        child: Column(
          children: [
            Container(
              height: 150.0,
              // constraints: BoxConstraints.expand(width: double.infinity,height: 100.0),
              decoration: BoxDecoration(
                color: Colors.red,
               borderRadius: BorderRadius.all(Radius.circular(10.0),),
                image: DecorationImage(image: AssetImage('../images/vege01.jpg'),fit: BoxFit.cover,)
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                       Padding(
                         padding: const EdgeInsets.only(right: 190.0,bottom: 10.0),
                         child: Container(
                           height: 40.0,
                           width: 100.0,
                           decoration: BoxDecoration(
                               color: Color(0xffd1ad17),
                             borderRadius: BorderRadius.only(
                               bottomLeft: Radius.circular(50.0,),
                               bottomRight: Radius.circular(60.0,),)
                           ),
                           child: Text('Vegi',style: TextStyle(fontSize: 20.0,color: Colors.white,shadows: [BoxShadow(color: Colors.green,blurRadius: 10,offset: Offset(3, 3)),]),),
                         ),
                       ),
                        Text('30% off', style: TextStyle(color: Colors.white,fontSize: 40.0,fontWeight: FontWeight.bold,shadows: [BoxShadow(offset: Offset(3,3),color: Colors.green)]),),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text('on all vegetables products', style: TextStyle(color: Colors.white,fontSize: 15.0,fontWeight: FontWeight.bold),),
                        ),

                      ],
                    ),
                  ),),
                  Expanded(child: Container(),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Text('Herbs Seasonings',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                    Text('view all',style: TextStyle(color: Colors.grey,fontSize: 15.0),),
                  ],
              ),
            ),
            Row(
              children: [

              ],
            )
          ],
        ),
      ),
    );
  }
}
