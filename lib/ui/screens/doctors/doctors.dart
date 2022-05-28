import 'package:doctor_app/constants.dart';
import 'package:doctor_app/text_style.dart';
import 'package:doctor_app/ui/widgets/active_tab_indicator.dart';
import 'package:doctor_app/ui/widgets/custom_carousel_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoctorsScreen extends StatefulWidget {
  const DoctorsScreen({Key? key}) : super(key: key);

  @override
  State<DoctorsScreen> createState() => _DoctorsScreenState();
}

class _DoctorsScreenState extends State<DoctorsScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  final TextEditingController _searchController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  int _currentTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      slivers: [
        SliverAppBar(
          floating: true,
          toolbarHeight: 70,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Available",
                  style: subHeaderTextStyle.copyWith(),
                ),
                Text(
                  "Specialist",
                  style: headerTextStyle.copyWith(
                    fontSize: headline2 + 3,
                  ),
                )
              ],
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.search,
                color: primaryColor,
                size: headline1 - 4,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.chat_bubble_text,
                color: primaryColor,
                size: headline1 - 6,
              ),
            ),
          ],
          bottom: TabBar(
            onTap: (int index) {
              setState(() {
                _currentTabIndex = index;
              });
            },
            padding: EdgeInsets.zero,
            labelPadding: EdgeInsets.zero,
            physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            controller: _tabController,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 0.1,
            tabs: [
              _currentTabIndex == 0
                  ? const ActiveBottomNavBarTab(
                      label: "all",
                      margin: EdgeInsets.only(
                        left: 18.0,
                      ),
                    )
                  : Container(
                      margin: const EdgeInsets.only(left: 18.0),
                      child: const Text(
                        "All",
                        style: fieldHeaderTextStyle,
                      ),
                    ),
              _currentTabIndex == 1
                  ? const ActiveBottomNavBarTab(
                      label: "Pediatrician",
                      margin: EdgeInsets.only(
                        left: 18.0,
                      ),
                    )
                  : Container(
                      margin: const EdgeInsets.only(left: 18.0),
                      child: const Text(
                        "Pediatrician",
                        style: fieldHeaderTextStyle,
                      ),
                    ),
              _currentTabIndex == 2
                  ? const ActiveBottomNavBarTab(
                      label: "Neurosurgeon",
                      margin: EdgeInsets.only(
                        left: 18.0,
                      ),
                    )
                  : Container(
                      margin: const EdgeInsets.only(left: 18.0),
                      child: const Text(
                        "Neurosurgeon",
                        style: fieldHeaderTextStyle,
                      ),
                    ),
              _currentTabIndex == 3
                  ? const ActiveBottomNavBarTab(
                      label: "Cardiologist",
                      margin: EdgeInsets.only(
                        left: 18.0,
                      ),
                    )
                  : Container(
                      margin: const EdgeInsets.only(left: 18.0),
                      child: const Text(
                        "Cardiologist",
                        style: fieldHeaderTextStyle,
                      ),
                    ),
              _currentTabIndex == 4
                  ? const ActiveBottomNavBarTab(
                      label: "Psychologist",
                      margin: EdgeInsets.only(left: 18.0, right: 18.0),
                    )
                  : Container(
                      margin: const EdgeInsets.only(right: 18.0, left: 18.0),
                      child: const Text(
                        "Psychologist",
                        style: fieldHeaderTextStyle,
                      ),
                    ),
            ],
            isScrollable: true,
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18.0),
          sliver: SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 1.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return const DoctorsPageCard();
              },
              childCount: 20,
            ),
          ),
        )
      ],
    );
  }
}
