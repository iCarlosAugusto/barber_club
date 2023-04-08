import 'package:barber_club/common/components/back_button_widget.dart';
import 'package:barber_club/common/components/text_widget.dart';
import 'package:flutter/material.dart';

class PartnersDetailsView extends StatefulWidget {
  const PartnersDetailsView({super.key});

  @override
  State<PartnersDetailsView> createState() => _PartnersDetailsViewState();
}

class _PartnersDetailsViewState extends State<PartnersDetailsView>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);

    List<Tab> myTabs = <Tab>[
      const Tab(text: 'Detalhes'),
      const Tab(text: 'Serviços'),
      const Tab(text: 'Profissionais'),
    ];
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.network(
                'https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fwww.oldtownbarberclub.com%2Fwp-content%2Fuploads%2F2015%2F01%2Fslide01.jpg&f=1&nofb=1&ipt=696bebde14efa1e98f1918176653d7874e2598d6c61259319ddeedab538c593b&ipo=images',
                width: MediaQuery.of(context).size.width,
              ),
              const BackButtonWidget()
            ],
          ),
          TabBar(
            labelColor: Colors.blue,
            controller: _tabController,
            tabs: myTabs,
          ),
          Expanded(
            child: TabBarView(controller: _tabController, children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TextWidget('Endereço', isFontWeight: true),
                    const TextWidget(
                        'Avenida Rochedo, Quadra 27 Lote 02 Casa 01'),
                    const TextWidget('Número para contato',
                        isFontWeight: true, margin: EdgeInsets.only(top: 16)),
                    Row(
                      children: [
                        const TextWidget('(62) 98239-9800'),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.phone))
                      ],
                    ),
                    const Divider(),
                    const TextWidget('Horários disponíveis',
                        isFontWeight: true),
                    const TextWidget('Segunda-feira'),
                    const Divider(),
                    const TextWidget('Formas de pagamento', isFontWeight: true),
                    const TextWidget('Dinheiro/Pix'),
                    const TextWidget('Débito'),
                    const TextWidget('Crédito'),
                    const Divider(),
                    const TextWidget('Redes sociais', isFontWeight: true),
                    const TextWidget('Instagram'),
                    const TextWidget('Facebook'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: 10,
                  separatorBuilder: (_, __) => const SizedBox(height: 16),
                  itemBuilder: (_, __) {
                    return InkWell(
                      onTap: () {
                        print('AAAAAAAA');
                      },
                      child: Card(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 200,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: double.infinity,
                                width: 170,
                                color: Colors.blue,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  TextWidget('Corte dêgrade'),
                                  TextWidget('R\$ 20,00', isFontWeight: true),
                                  TextWidget('15 minutos')
                                ],
                              ),
                              const Icon(Icons.arrow_forward_ios)
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                )
              ),
              const Center(
                child: Text('aaaaaaaaab'),
              )
            ]),
          ),
        ],
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
