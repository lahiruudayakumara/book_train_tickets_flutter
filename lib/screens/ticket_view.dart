import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/widgets/thick_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFF526799),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(21),
                topRight: Radius.circular(21))
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Colombo", style: TextStyle(color: Colors.white, fontSize: 14,fontWeight: FontWeight.bold,),),

                      Expanded(child: Container()),
                      ThickContainer(),
                      Expanded(child: Stack(
                          children: [
                            SizedBox(
                                height: 24,
                                child: LayoutBuilder(
                                    builder: (BuildContext context, BoxConstraints constraints) {
                                      print("The width is ${constraints.constrainWidth()}");
                                      return Flex(
                                        direction: Axis.horizontal,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        mainAxisSize: MainAxisSize.max,
                                        children: List.generate((constraints.constrainWidth()/6).floor(), (index) => SizedBox(
                                          width: 3,height: 1, child: DecoratedBox(decoration: BoxDecoration(
                                            color: Colors.white
                                        ),),),),
                                      );
                                    },
                                )
                            ),
                            Center(child: Icon(IconData(0xe675, fontFamily: 'MaterialIcons'), color: Colors.white),),
                          ],
                      ),),
                      ThickContainer(),

                      Expanded(child: Container()),

                      Text("Kandy", style: TextStyle(color: Colors.white, fontSize: 14,fontWeight: FontWeight.bold,),)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
