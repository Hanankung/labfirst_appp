import 'package:flutter/material.dart';
import 'package:labfirst_app/pages/secondpage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  double _weight = 100; //ประกาศตัวแปรเพื่อกำหนดค่า max-min ของน้ำหนัก
  double _height = 100; //ประกาศตัวแปรเพื่อกำหนดค่า max-min ของความสูง
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("this is my first page",
              style: TextStyle(
                fontSize: 16,
              )),
        ),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Center(
              child: Container(
                child: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 49, 116, 142),
                  radius: 70,
                  child: Text("Your Logo",style: TextStyle(color: Colors.white,fontSize: 20),),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,//กำหนดว่า register อยู่ตรงไหนอยู่กลางหรือขยับข้างซ้านนิดๆ
                ),
                Text(
                  "Rigister",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 26),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            //------------------------------------- TextFormField -------------------------------------------
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Name",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                ),
                
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),//ความกว้างของกล่องข้อความ
            
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),//กำหนดให้กล่องเป็นเหลี่ยมหรือมีความเรียว
                        borderSide: BorderSide(width: 1)),
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),

            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Username",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(width: 1)),
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),

            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Password",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(width: 1)),
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
            //----------------------------------- Slider --------------------------------------------
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 25,
                ),
                Text(
                  "Weight",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Slider(
                  min: 1,
                  max: 100,
                  value: _weight,
                  onChanged: (value) {
                    setState(() {
                      _weight = value;
                    });
                  }),
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 25,
                ),
                Text(
                  "Height",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Slider(
                  min: 1,
                  max: 100,
                  value: _height,
                  onChanged: (value) {
                    setState(() {
                      _height = value;
                    });
                  }),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 140),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage()),
                  );
                },
                child: Text("Next",style: TextStyle(fontSize: 20),),
              ),
            ),
          ],
        ));
  }
}