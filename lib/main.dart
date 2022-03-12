import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Center(
          child: Text('عاصمة فلسطين',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/aqsa.jpg'),
                ),
              ),
            ),
            Container(
                margin: const EdgeInsets.all(10),
                child: const Text(
                  'مدينة القدس',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                )),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  myRow(title: 'الاسم', text: 'القدس'),
                  const SizedBox(
                    height: 20,
                  ),
                  myRow(title: 'المساحة', text: '125 كم'),
                  const SizedBox(
                    height: 20,
                  ),
                  myRow(title: 'السكان', text: '358000'),
                  const SizedBox(
                    height: 20,
                  ),
                  myRow(title: 'الدولة', text: 'فلسطين'),
                  const SizedBox(
                    height: 20,
                  ),
                  myRow(title: 'اسم الطالب', text: 'هلا الكيالي'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget myRow({required String title, required String text}) {
    return myContainer(
      Row(
        children: [
          Expanded(
              child: myContainer(Center(
                  child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.grey,fontSize: 20),
          )),color: Colors.white)),
          const SizedBox(
            width: 5,
          ),
          myContainer(
              Center(
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.grey,fontSize: 20),
                ),
              ),
              width: 100.0,color: Colors.white)
        ],
      ),color: const Color.fromRGBO(0,0,0, 0.1)
    );
  }

  Widget myContainer(Widget child, {width,color}) {
    return Container(
        height: 60,
        width: width,
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: color,
          border: Border.all(width: 1, color: Colors.grey),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: child);
  }
}
