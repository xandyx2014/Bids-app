import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CarsView extends StatelessWidget {
  const CarsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 460.0,
      child: PageView(
        controller: PageController(
          viewportFraction: 0.84
        ),
        children: <Widget>[
          _Card(),
          _Card(),
          _Card(),
          _Card(),
          _Card(),
        ],
      ),
    );
  }
}

class _Card extends StatelessWidget {
  // const _Card({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Row(
            children: <Widget>[
              Row(
                children: <Widget>[
                  _PrimeraDescripcion(),
                  SizedBox(
                    width: 40.0,
                  ),
                  _TarjetaDescripcion()
                ],
              ),
              
            ],
          ),
          Positioned(
                top: 90,
                left: 50,
                child: Image(
                  image: AssetImage('assets/blue.png'),
                  width: 160.0,
                )
              ),
        ],
      ),
    );
  }
}

class _PrimeraDescripcion extends StatelessWidget {
  const _PrimeraDescripcion({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: RotatedBox(
        quarterTurns: 3,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(FontAwesomeIcons.batteryFull, size: 15.0),
            SizedBox(
              width: 10.0,
            ),
            Text('40-Hour Battery', style: TextStyle(fontSize: 12.0)),
            SizedBox(width: 30.0),
            Icon(FontAwesomeIcons.wifi, size: 15.0),
            SizedBox(
              width: 10.0,
            ),
            Text('Wireless', style: TextStyle(fontSize: 12.0)),
          ],
        ),
      ),
    );
  }
}

class _TarjetaDescripcion extends StatelessWidget {
  const _TarjetaDescripcion({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Card(
      elevation: 9,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: Container(
          width: size.width * 0.55,
          height: 340.0,
          color: Color(0xff0B3FA2),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 25.0,
              ),
              RotatedBox(
                quarterTurns: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text('Warrios',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        )),
                    Text('Royal Blue',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Beats Studio3 Wirreles',
                      style: TextStyle(color: Colors.white),
                    ),
                    Spacer(),
                    Icon(
                      FontAwesomeIcons.heart,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: 70.0,
                    child: Text('\$3499',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    child: Center(
                      child: Text('Add', style: TextStyle(color: Colors.white)),
                    ),
                    width: 100.0,
                    height: 45.0,
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(15))),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
