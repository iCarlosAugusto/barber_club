import 'package:barber_club/modules/partners/partners_view.dart';
import 'package:flutter/material.dart';

enum UserTypes { client, partner, guest}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {

    late List<Widget> pageViewChildren;
    late List<BottomNavigationBarItem> bottomNavigationChildren;
    UserTypes userType = UserTypes.client;

    switch (userType) {

      //case UserTypes.guest:
      //  pageViewChildren = [
      //    const PartnersView(),
      //    const SearchPartnersView(),
      //    const UserAsGuestView() 
      //  ];
      //  bottomNavigationChildren = [
      //    const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //    const BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Procurar'),
      //    const BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
      //  ];
      //break;
      case UserTypes.client:
        pageViewChildren = [
          const PartnersView()
        ];
        bottomNavigationChildren = [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          const BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Procurar'),
          const BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ];
      break;
      //case UserTypes.partner:
      //  pageViewChildren = [
      //    const PartnerResumeView(),
      //    const ProfileView() 
      //  ];
      //  bottomNavigationChildren = [
      //    const BottomNavigationBarItem(icon: Icon(Icons.library_books_outlined), label: 'Resumo de consultas'),
      //    const BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
      //  ];
      //break;
      default:
    }
  
    return Scaffold(
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          //onPageChanged: (int index) => controller.handleOnChangePage(index: index),
          //controller: controller.pageController,
          children: pageViewChildren
        ),
        bottomNavigationBar: BottomNavigationBar(
          //currentIndex: controller.currentActivedPage,
          //onTap: (int index) => controller.handleChangePageByBottomNavigation(index: index),
          items: bottomNavigationChildren
        )
      );
  }
}