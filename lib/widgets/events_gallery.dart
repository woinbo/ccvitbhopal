import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Events extends StatelessWidget {
  const Events({
    Key key,
    @required this.cardList,
  }) : super(key: key);

  final List<String> cardList;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: 450,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 50),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 8,
                    color: Colors.grey.shade500,
                    offset: Offset(0, 0),
                  )
                ]),
            child: Image.network(
              cardList[index],
            ),
          );
        },
        itemCount: 3,
        viewportFraction: 0.8,
        scale: 0.8,
      ),
    );
  }
}
