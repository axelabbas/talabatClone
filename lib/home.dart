import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {

  Map categoryMap = {
    'first category': {
      'image':'https://image.shutterstock.com/image-photo/old-brick-black-color-wall-260nw-1605128917.jpg',
      'h':100.0,
      'w':100.0
    },
    'idk': {
      'image':'https://t-urll.com/vfXmS',
      'h':100.0,
      'w':100.0
    },
    '321 rest': {
      'image':'https://image.shutterstock.com/image-photo/old-brick-black-color-wall-260nw-1605128917.jpg',
      'h':100.0,
      'w':100.0
    },
    '343': {
      'image':'https://t-urll.com/vfXmS',
      'h':100.0,
      'w':100.0
    },
    '3123434 rest': {
      'image':'https://image.shutterstock.com/image-photo/old-brick-black-color-wall-260nw-1605128917.jpg',
      'h':100.0,
      'w':100.0
    },
    'man help me': {
      'image':'https://t-urll.com/vfXmS',
      'h':100.0,
      'w':100.0
    },
    'f': {
      'image':'https://image.shutterstock.com/image-photo/old-brick-black-color-wall-260nw-1605128917.jpg',
      'h':100.0,
      'w':100.0
    },
    'name': {
      'image':'https://t-urll.com/vfXmS',
      'h':100.0,
      'w':100.0
    },

  };
  Map cardsMap = {
    'Exclusive':Icons.not_started_rounded,
    'nice':Icons.not_started_rounded,
    'fadel':Icons.not_started_rounded,
    'placer':Icons.not_started_rounded,
    'idk':Icons.not_started_rounded,
    'ma,e':Icons.not_started_rounded,

  };
  Map restMap = {
    'first rest': {
      'image':'https://image.shutterstock.com/image-photo/old-brick-black-color-wall-260nw-1605128917.jpg',
      'h':100.0,
      'w':100.0
    },
    'idk': {
      'image':'https://t-urll.com/vfXmS',
      'h':100.0,
      'w':100.0
    },
     '321 rest': {
      'image':'https://image.shutterstock.com/image-photo/old-brick-black-color-wall-260nw-1605128917.jpg',
      'h':100.0,
      'w':100.0
    },
    '343': {
      'image':'https://t-urll.com/vfXmS',
      'h':100.0,
      'w':100.0
    },
     '3123434 rest': {
      'image':'https://image.shutterstock.com/image-photo/old-brick-black-color-wall-260nw-1605128917.jpg',
      'h':100.0,
      'w':100.0
    },
    'man help me': {
      'image':'https://t-urll.com/vfXmS',
      'h':100.0,
      'w':100.0
    },
     'f': {
      'image':'https://image.shutterstock.com/image-photo/old-brick-black-color-wall-260nw-1605128917.jpg',
      'h':100.0,
      'w':100.0
    },
    'name': {
      'image':'https://t-urll.com/vfXmS',
      'h':100.0,
      'w':100.0
    },

  };


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.search,color: Colors.black,),
        actions:[Icon(Icons.notifications_outlined,color: Colors.black,),],
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
      Icon(Icons.keyboard_arrow_down_sharp,color: Colors.black,),
      Text('المنصور',style: TextStyle(color: Colors.black),)
      ],),
        ),
      body: SafeArea(
        child: Expanded(
          child: Column(
            children: [
                Container(
                  height: 150,
                  width: 400,
                  //newmap.values.elementAt(index)['h'], newmap.values.elementAt(index)['w'], newmap.values.elementAt(index)['image'], newmap.keys.elementAt(index)));
                  child: ListView.builder(
                    itemCount: categoryMap.length,
                    itemBuilder:  (BuildContext context, int index) {
                      return  categorycard(categoryMap.keys.elementAt(index),categoryMap.values.elementAt(index)['image'],categoryMap.values.elementAt(index)['h'],categoryMap.values.elementAt(index)['w']);},
                    reverse: true,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              Container(
                width: 400,
                height: MediaQuery.of(context).size.height-270,
                child: ListView(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                        child: Text('المحلات الاكثر شيوعا',style: TextStyle(fontSize:25,color: Colors.redAccent,fontWeight: FontWeight.bold),)),
                    Divider(height: 10,thickness: 1,color: Colors.redAccent,indent: 120,),
                    Container(
                      height: 150,
                      width: 400,
                      child: ListView.builder(
                        itemCount: restMap.length,
                        itemBuilder:  (BuildContext context, int index) {
                          return  categorycard(restMap.keys.elementAt(index),restMap.values.elementAt(index)['image'],restMap.values.elementAt(index)['h'],restMap.values.elementAt(index)['w']);},
                        reverse: true,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),Container(
                      height: 75,
                      width: 400,
                      child:  ListView.builder(
                        itemCount: cardsMap.length,
                        itemBuilder:  (BuildContext context, int index) {
                          return  typecard(cardsMap.keys.elementAt(index),cardsMap.values.elementAt(index));
                          },
                        reverse: true,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
//                          typecard('حصري',Icons.star_outline,),

                    infocard('https://t-urll.com/vfXmS', 'name', 'Baghdad', 'Great'),
                    infocard('https://t-urll.com/vfXmS', 'name', 'Baghdad', 'Great'),
                    infocard('https://t-urll.com/vfXmS', 'name', 'Baghdad', 'Great'),
                    infocard('https://t-urll.com/vfXmS', 'name', 'Baghdad', 'Great'),
                    infocard('https://t-urll.com/vfXmS', 'name', 'Baghdad', 'Great'),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'الحساب',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long_outlined),
            label: 'لطلبات'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet_outlined),
            label: 'المحفظه',
          ),BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'الرئيسيه',
          ),
        ],
      selectedItemColor: Colors.redAccent,
     currentIndex: 3,
     // selectedIconTheme: IconThemeData(color: Colors.redAccent),
      ),
    );
  }
  Widget categorycard(txt,src,double h,double w){
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: h,
              width: w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.grey,
                image: DecorationImage(
                  image: NetworkImage(src),
                  fit: BoxFit.cover
                )
              ),
            ),
            SizedBox(height: 10,),
            Text(txt)
          ],
      ),
    );
  }
  Widget restcard(txt,src,double h,double w){
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: h,
              width: w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.grey,
                image: DecorationImage(
                  image: NetworkImage(src),
                  fit: BoxFit.cover
                )
              ),
            ),
            SizedBox(height: 10,),
            Text(txt,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.redAccent,fontSize: 20),)
          ],
      ),
    );
  }
  Widget typecard([txt,icon]){
    return Align(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 50,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(.6),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Row(
            children: [
              Text(txt,style: TextStyle(color: Colors.black.withOpacity(.5)),),
              SizedBox(width: 5,),
              Icon(icon,color: Colors.black.withOpacity(.5),),
            ],
          ),
        ),
      ),
    );
  }
  Widget infocard(url,name,loc,rate){
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 200,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(url)
                )
              ),
            ),
              Positioned(
                right: 10,
                top: 10,
                child:Row(

                children: [
                  Container(
                    height: 50,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(.6),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(child: Icon(Icons.motorcycle_outlined,color: Colors.black.withOpacity(.5),)),

                  ),

                  Container(
                    height: 50,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(.6),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(child:Text('promocode'))
                  ),

                ],
              ),
              ),
  ]
          ),
          SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('الحد الادني للتوصيل هو 5000'),
              Text(name,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.redAccent,fontSize: 20),),

            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                Text('سعر التوصيل 1000'),
                SizedBox(width: 5,),
                Icon(Icons.motorcycle_outlined),
              ],),
              Row(children: [
                Text(rate),
                SizedBox(width: 5,),
                Icon(Icons.emoji_emotions_rounded),
              ],),
              Row(children: [
                Text(loc),
                SizedBox(width: 5,),
                Icon(Icons.location_pin),
              ],),

            ],
          )

        ],
      ),
    );
  }
}
