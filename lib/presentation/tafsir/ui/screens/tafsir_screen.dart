import 'package:flutter/material.dart';
import '../widgets/sticky_tab_bar_delegate.dart';
import '../widgets/tafsir_tab_content.dart';
import '../widgets/tafsir_header.dart';
import '../widgets/tafsir_ayah_expansion_tile.dart';

class TafsirScreen extends StatelessWidget {
  const TafsirScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              const TafsirHeader(),
              const TafsirAyahExpansionTile(),
              SliverPersistentHeader(
                delegate: StickyTabBarDelegate(
                  TabBar(
                    padding: EdgeInsets.zero,
                    isScrollable: true,
                    indicatorColor: Colors.black,
                    labelColor: Colors.black,
                    tabs: [
                      const Tab(text: 'En: Ibn Kathir'),
                      const Tab(text: 'Bn: Tafsir Fathul ...'),
                      Tab(icon: Icon(Icons.add, color: Colors.black)),
                      const Tab(text: 'Ad'),
                    ],
                  ),
                ),
                pinned: true,
              ),
              SliverPadding(
                padding: const EdgeInsets.only(bottom: 8.0),
                sliver: SliverToBoxAdapter(child: Container()),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              TafsirTabContent(),
              TafsirTabContent(),
              TafsirTabContent(),
              TafsirTabContent(),
            ],
          ),
        ),
      ),
    );
  }
}
