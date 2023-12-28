import "package:flutter/material.dart";
import "package:gomoonapp1/custom_widgets/my_custom_widgets.dart";

//ignore: must_be_immutable
class homepage extends StatelessWidget {
  late double _deviceheight, _devicewidht;

  homepage({super.key});

  @override
  Widget build(BuildContext context) {
    _deviceheight = MediaQuery.of(context).size.height;
    _devicewidht = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SafeArea(
            child: Container(
                height: _deviceheight,
                width: _devicewidht,
                padding: EdgeInsets.symmetric(horizontal: _devicewidht * 0.1),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    _homepagewidget(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _textwidget(),
                        _CombiningRowAndColumWidgets(),
                      ],
                    ),
                  ],
                ))));
  }

  Widget _homepagewidget() {
    return Container(
      decoration: const BoxDecoration(
          color: Color.fromARGB(240, 7, 4, 4),
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage("lib/images/11.png"))),
    );
  }

  Widget _CombiningRowAndColumWidgets() {
    return Container(
      height: _deviceheight * 0.2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _destinationdropdownmenu(),
          _travellersinformationwidgth(),
          _BookArideButtom(),
        ],
      ),
    );
  }

  Widget _textwidget() {
    return const Text(
      "Let's Go To Moon",
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
      style: TextStyle(
          color: Colors.white, fontSize: 49.2, fontWeight: FontWeight.w900),
    );
  }

  Widget _destinationdropdownmenu() {
    return Allcustomdropdownbuttoms(
      values: const [
        'SpaceX Station',
        'MorgamEE Station',
        'Fsociety Station187'
      ],
      width: _devicewidht,
    );
  }

  Widget _travellersinformationwidgth() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Allcustomdropdownbuttoms(values: const [
          "Economy Class",
          "Executive Class",
          "luxury class ",
          "Lower Class"
        ], width: _devicewidht * 0.5),
        Allcustomdropdownbuttoms(
            values: const ["1", "2", "3", "4"], width: _devicewidht * 0.28),
      ],
    );
  }

  Widget _BookArideButtom() {
    return Container(
      padding: EdgeInsets.only(
        bottom: _deviceheight * 0.000001,
      ),
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      width: _devicewidht,
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          "Book A Ride",
          textAlign: TextAlign.end,
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
