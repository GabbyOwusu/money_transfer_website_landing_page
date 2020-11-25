import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget _sendMoney({String title, String amount, String currency}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 11,
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          height: 40,
          width: 250,
          margin: EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              Text(
                amount,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              Text(
                currency,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Icon(
                Icons.arrow_downward,
                size: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: FittedBox(
          fit: BoxFit.cover,
          child: Padding(
            padding: EdgeInsets.only(left: 80, top: 10),
            child: Row(
              children: [
                Text(
                  'M',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(36, 32, 246, 1),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'Transfer\nMoney',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('How to Send', style: TextStyle(fontSize: 13)),
            SizedBox(width: 20),
            Text('Track Sending', style: TextStyle(fontSize: 13)),
            SizedBox(width: 20),
            Text('Find location', style: TextStyle(fontSize: 13)),
          ],
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 30),
                child: Text(
                  'Sign in',
                  style: TextStyle(fontSize: 13),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 30),
                height: 25,
                width: 80,
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(36, 32, 246, 1)),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 13,
                      color: Color.fromRGBO(36, 32, 246, 1),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/bg2.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 100,
                    left: 130,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Text.rich(
                        TextSpan(
                          text: 'A quick way\nto send your\n',
                          children: [
                            TextSpan(
                              text: 'money faster',
                              style: TextStyle(
                                fontFamily: 'Questa',
                                color: Color.fromRGBO(36, 32, 246, 1),
                              ),
                            ),
                          ],
                        ),
                        style: TextStyle(
                          fontFamily: 'Questa',
                          fontSize: 70,
                          fontWeight: FontWeight.w600,
                          height: 1.2,
                        ),
                      ),
                      SizedBox(height: 30),
                      Text(
                        'Transfer money convieniently\nanytime, from anywhere and\nany device',
                        style: TextStyle(
                          fontSize: 20,
                          height: 1.4,
                        ),
                      ),
                      SizedBox(height: 30),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromRGBO(36, 32, 246, 0.6),
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Text('Learn more'),
                            ),
                          ),
                          SizedBox(width: 20),
                          Text('about our method'),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  margin: EdgeInsets.only(right: 130, top: 100),
                  height: 450,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.03),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'Transfer Summary',
                          style: TextStyle(
                            fontFamily: 'Questa',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 50),
                      _sendMoney(
                        title: 'You send',
                        amount: '1000',
                        currency: 'USD',
                      ),
                      SizedBox(height: 30),
                      _sendMoney(
                        title: 'They recieve',
                        amount: '2500',
                        currency: 'UAH',
                      ),
                      SizedBox(height: 30),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Exchange rate : 1 USD = 25.00 UAH',
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 250,
                        margin: EdgeInsets.only(top: 30),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 58, 106, 1),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text(
                            'Send',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            'Compare prices',
                            style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
