import 'package:barber_club/common/components/text_widget.dart';
import 'package:flutter/material.dart';


class AppbarWidget extends StatelessWidget with PreferredSizeWidget {

  AppbarWidget({super.key, this.title = '', this.isCenterTitle, this.elevation});

  final String title;
  final bool? isCenterTitle;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: elevation,
      centerTitle: isCenterTitle,
      title: TextWidget(title),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
