import 'package:flutter/material.dart';

class FlutterUiOne extends StatefulWidget {
  _FlutterUiOneState createState() => _FlutterUiOneState();
}

class _FlutterUiOneState extends State<FlutterUiOne> {
  String fontFamily = "SourceCodePro";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: FlutterLogo(
          colors: Colors.green,
          size: 25.0,
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.greenAccent[200],
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.greenAccent[200],
            ),
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                height: 50.0,
                color: Colors.white,
                child: Text(
                  "Get Coaching",
                  style: TextStyle(
                    fontFamily: fontFamily,
                    fontSize: 20.0,
                    color: Colors.greenAccent[200],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(25.0, 75.0, 25.0, 0.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 15.0,
                      color: Colors.greenAccent[100].withOpacity(0.5),
                      spreadRadius: 5.0,
                      offset: Offset(
                        0.0,
                        10.0,
                      ),
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 5.0),
                          child: Text(
                            "YOU HAVE",
                            style: TextStyle(
                              fontFamily: fontFamily,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(25.0, 40.0, 5.0, 15.0),
                          child: Text(
                            "999",
                            style: TextStyle(
                              fontFamily: fontFamily,
                              color: Colors.red,
                              fontWeight: FontWeight.w600,
                              fontSize: 40.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 90.0,
                    ),
                    Container(
                      height: 50.0,
                      width: 110.0,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent[100].withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Text(
                          "Buy More",
                          style: TextStyle(
                            fontFamily: fontFamily,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40.0,
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 25.0,
              right: 25.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "MY COACHES",
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: fontFamily,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                  ),
                ),
                Text(
                  "VIEW PAST SESSIONS",
                  style: TextStyle(
                    color: Colors.green,
                    fontFamily: fontFamily,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          GridView.count(
            crossAxisCount: 2,
            primary: false,
            crossAxisSpacing: 2.0,
            mainAxisSpacing: 4.0,
            shrinkWrap: true,
            children: <Widget>[
              _buildCard("djkloop", 'Available', 1),
              _buildCard("djkloop", 'Away', 2),
              _buildCard("djkloop", 'Available', 3),
              _buildCard("djkloop", 'Available', 4),
              _buildCard("djkloop", 'Away', 5),
              _buildCard("djkloop", 'Available', 6),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCard(String name, String status, int cardIdx) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 2.0,
              color: Colors.greenAccent[100].withOpacity(0.5),
              spreadRadius: 5.0,
              offset: Offset(
                0.0,
                10.0,
              ),
            ),
          ],
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 12.0,
            ),
            Stack(
              children: <Widget>[
                Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.green,
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://avatars1.githubusercontent.com/u/21050914?s=460&v=4",
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 40.0,
                  ),
                  height: 20.0,
                  width: 20.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: status == 'Away' ? Colors.amber : Colors.green,
                    border: Border.all(
                      color: Colors.white,
                      style: BorderStyle.solid,
                      width: 2.0,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              status,
              style: TextStyle(
                fontFamily: fontFamily,
                fontWeight: FontWeight.bold,
                fontSize: 12.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Expanded(
              child: Container(
                width: 175.0,
                decoration: BoxDecoration(
                  color: status == 'Away' ? Colors.grey : Colors.green,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5.0),
                    bottomRight: Radius.circular(5.0),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Request',
                    style: TextStyle(
                      fontFamily: fontFamily,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      margin: cardIdx.isEven
          ? EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0)
          : EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 10.0),
    );
  }
}
