import 'package:barber_club/common/components/appbar_widget.dart';
import 'package:barber_club/common/components/card_partner_widget.dart';
import 'package:barber_club/common/components/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PartnersView extends StatelessWidget {
  const PartnersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const TextWidget('Barbearias próximas', margin: EdgeInsets.only(bottom: 32)),
            Expanded(
              child: ListView.separated(
                itemBuilder: (_, __) => CardPartnersWidget(onTap: () {
                  context.push('/partnerDetails');
                }),
                separatorBuilder: (_, __) => const SizedBox(height: 16),
                itemCount: 10
              ),
            )
          ],
        ),
      ),
    );
  }
}