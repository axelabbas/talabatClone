import 'package:flutter/material.dart';

class registerScreen extends StatefulWidget {
  @override
  State<registerScreen> createState() => _registerScreenState();
}

class _registerScreenState extends State<registerScreen> {
  bool clicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                'https://i.imgur.com/sa6G6GT.png',
                scale: 4,
              ),
              SizedBox(
                height: 100,
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: TextFormField(
                  maxLength: 16,
                  decoration: InputDecoration(
                    fillColor: Colors.grey.withOpacity(.2),
                    filled: true,
                    counterStyle: TextStyle(color: Colors.red),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey.withOpacity(.2), width: 0.0),
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      borderSide: BorderSide(
                          color: Colors.grey.withOpacity(.2), width: 0.0),
                    ),
                    hintText: 'الاسم',
                      hintStyle: TextStyle(fontSize: 15,color: Colors.grey.withOpacity(.8),)

                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: TextFormField(
                  maxLength: 11,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    fillColor: Colors.grey.withOpacity(.2),
                    filled: true,
                    counterStyle: TextStyle(color: Colors.red),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey.withOpacity(.2), width: 0.0),
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      borderSide: BorderSide(
                          color: Colors.grey.withOpacity(.2), width: 0.0),
                    ),
                    hintText: 'الرقم',
                      hintStyle: TextStyle(fontSize: 15,color: Colors.grey.withOpacity(.8),)

                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        clicked = !clicked;
                      });
                    },
                    child: arrowWay(),
                  ),
                  Text(
                    'اذا كان لديك رابط مشاركه',
                    style: TextStyle(
                        color: Colors.redAccent, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              if (clicked == true)
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey.withOpacity(.2),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey.withOpacity(.2), width: 0.0),
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(
                            color: Colors.grey.withOpacity(.2), width: 0.0),
                      ),
                      hintText: 'الرمز',
                      hintStyle: TextStyle(fontSize: 15,color: Colors.grey.withOpacity(.8),)
                    ),
                  ),
                ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.redAccent,shape: StadiumBorder(),fixedSize: Size(MediaQuery.of(context).size.width, 40)),
                  onPressed: () {
                    print('Submitted');
                  },
                  child: Center(
                    child: Text('التالي'),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Widget arrowWay() {
    if (clicked == true)
      return Icon(
        Icons.keyboard_arrow_down,
        color: Colors.redAccent,
      );
    else
      return Icon(
        Icons.keyboard_arrow_left,
        color: Colors.redAccent,
      );
  }
}
