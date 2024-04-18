import 'package:flutter/material.dart';
import 'package:megaproject/pages/home_detail_page.dart';
import 'package:megaproject/widgets/home_widgets/catalog_image.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/catalog.dart';
import '../theme.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.getByPosition(index);
        return InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HomedetailPage(catalog: catalog))),
          child: CatalogItem(
            catalog: catalog,
          ),
        );
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  const CatalogItem({super.key, required this.catalog})
      : assert(catalog != null);
  final Item catalog;

  @override
  Widget build(BuildContext context) {
    return VxBox(
      //  VxBox() == Container()
    
      child: Row(
        children: [
          
          Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(
              image: catalog.image,
            ),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catalog.name.text.lg.bold.color(context.accentColor).make(),
              catalog.desc.text.textStyle(context.captionStyle).make(),
              6.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween, 
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${catalog.price}".text.bold.lg.make(),
                  ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              context.primaryColor)),
                      child: "Add to cart".text.color(Colors.white).make()),
                ],
              ).pOnly(right: 8.0),
            ],
          ))
        ],
      ),
    ).color(context.cardColor).rounded.square(150).make().py16();
  }
}
