import 'package:beats_app/src/shared/widgets/buy_button.dart';
import 'package:beats_app/src/shared/widgets/cars_view.dart';
import 'package:beats_app/src/shared/widgets/custom_app_bar.dart';
import 'package:beats_app/src/shared/widgets/fondo_page.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
        children: <Widget>[
        FondoCircular(),
        SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CustomAppBar(),
                _Header(),
                CarsView()
              ],
            ),
          )
        ),
        BuyButton()
      ],
    ));
  }
}

class _Header extends StatelessWidget {
  const _Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      margin: EdgeInsets.only(top: 45.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Bids', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0)),
          Text('By Dre', style: TextStyle(fontWeight: FontWeight.w100, fontSize: 18.0)),
        ],
      ),
    );
  }
}


