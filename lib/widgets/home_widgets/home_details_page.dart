import 'package:eshop_flutter/models/catalog.dart';
import 'package:eshop_flutter/widgets/home_widgets/add_to_cart.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Details extends StatelessWidget {
  final Item catalog;
  const Details({
    super.key,
    required this.catalog,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: SafeArea(
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.zero,
            children: [
              '\$${catalog.price}'.text.bold.xl4.red500.make(),
              AddToCart(
                catalog: catalog,
              ).wh(150, 50)
            ],
          ).p20(),
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image!),
            ).h32(context),
            Expanded(
              child: VxArc(
                height: 20.0,
                arcType: VxArcType.convey,
                edge: VxEdge.top,
                child: Container(
                  padding: const EdgeInsets.only(top: 40),
                  color: context.cardColor,
                  width: context.screenWidth,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        catalog.name!.text.xl4
                            .color(context.accentColor)
                            .bold
                            .make(),
                        catalog.desc!.text
                            .textStyle(context.captionStyle!)
                            .xl
                            .make(),
                        10.heightBox,
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit.Suspendisse augue ipsum, auctor eget velit eu, congue gravida metus. Aeneanscelerisque blandit turpis, eget vehicula tortor fringilla ac. Sed imperdietimperdiet tellus at vestibulum. Aliquam lacinia euismod diam, sed lobortis ligulaeuismod eget. In sem enim, dignissim ut metus ut, lacinia.'
                            .text
                            .textStyle(context.captionStyle!)
                            .make()
                            .p32()
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
