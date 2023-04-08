import 'package:barber_club/common/components/button_widget.dart';
import 'package:barber_club/common/components/text_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CardPartnersWidget extends StatelessWidget {
  const CardPartnersWidget({super.key, required this.onTap});

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: kIsWeb 
          ? MediaQuery.of(context).size.width - 400 
          : MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.If2Auxkyn15mpgevtb6R2gHaEK%26pid%3DApi&f=1&ipt=90e78a8830f8a5d5800d6af39f451e932c78198ca6b56b24dd8ae566451e8693&ipo=images'),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(16))),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    TextWidget('Personal',
                        isFontWeight: true, color: Colors.white),
                    TextWidget(
                      '30m | High Intensity | Indoor/Outdoor',
                      fontSize: AvailableFontSizes.small,
                      color: Colors.orange,
                    ),
                  ],
                ),
                const Icon(
                  Icons.chevron_right_rounded,
                  color: Colors.white,
                  size: 42,
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 42),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonWidget(
                    title: 'Reserve',
                    onTap: onTap,
                    icon: Icons.add,
                    color: Colors.orange,
                  ),
                  Column(
                    children: const [
                      TextWidget(
                        '10:00am',
                        isFontWeight: true,
                        color: Colors.white,
                      ),
                      TextWidget('Segunda',
                          color: Color(0xB4FFFFFF),
                          fontSize: AvailableFontSizes.small),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
