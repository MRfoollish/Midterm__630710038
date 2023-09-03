// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

// TODO: ใส่รหัสนักศึกษาที่ค่าสตริงนี้
const studentId = '630710038';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 20.0,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg_colorful.jpg"),
              opacity: 0.6,
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Good Morning',
                  textAlign: TextAlign.center, style: textTheme.headlineMedium),
              Text(studentId,
                  textAlign: TextAlign.center,
                  style: textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black87)),
              Spacer(),
              _buildQuizView(),
              Spacer(),
              _buildButtonPanel(),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }

  _buildQuizView() {
    // TODO: build UI
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(color: Colors.black),
        ),
        child: Column(
          children: [
            Text('Question 15 of 30'),
            Container(
              margin: EdgeInsets.fromLTRB(30, 30, 30, 30),
              decoration: BoxDecoration(
                color: Colors.greenAccent[400],
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.black),
              ),
              child: Text('What is the chemical symbol for  the element oxygen?'),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(12, 12, 12, 12),
                  padding: EdgeInsets.only(left: 180,right: 180),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Row(
                    children: [
                      Container(
                        // padding: EdgeInsets.only(left: 60,right: 60),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Text('A'),
                      ),
                      Text('O'),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(12, 12, 12, 12),
                  padding: EdgeInsets.only(left: 180,right: 180),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Row(
                    children: [
                      Container(
                        // padding: EdgeInsets.only(left: 60,right: 60),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Text('B'),
                      ),
                      Text('Ox'),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(12, 12, 12, 12),
                  padding: EdgeInsets.only(left: 180,right: 180),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Row(
                    children: [
                      Container(
                        // padding: EdgeInsets.only(left: 60,right: 60),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Text('C'),
                      ),
                      Text('O2'),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(12.0),
                  padding: EdgeInsets.only(left: 163,right: 163),
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent.shade100,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Row(
                    children: [
                      Container(
                        // padding: EdgeInsets.only(left: 60,right: 60),
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Text('D'),
                      ),
                      Text('Oxygen'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _buildButtonPanel() {
    // TODO: build UI
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(left: 60,right: 60),
            decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black),
            ),
            child: Text('<'),
          ),
          Container(
            padding: EdgeInsets.only(left: 60,right: 60),
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black),
            ),
            child: Text('>'),
          ),
        ],
      ),
    );
  }
}
