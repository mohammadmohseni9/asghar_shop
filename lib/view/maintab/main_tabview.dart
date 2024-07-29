import 'package:asghar_shop/common/constance.dart';
import 'package:asghar_shop/view/explore_category/explore_view.dart';
import 'package:asghar_shop/view/home/home_view.dart';
import 'package:flutter/material.dart';

class MainTabview extends StatefulWidget {
  const MainTabview({super.key});

  @override
  State<MainTabview> createState() => _MainTabviewState();
}

class _MainTabviewState extends State<MainTabview>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  int selectTab = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 5, vsync: this, initialIndex: 4);
    tabController?.addListener(() {
      selectTab = tabController?.index ?? 0;
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    tabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: tabController,
        children: [
          Container(),
          Container(),
          Container(),
          const ExploreView(),
          const HomeView(),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 3,
                offset: Offset(0, -2),
              ),
            ]),
        child: BottomAppBar(
          color: Colors.transparent,
          elevation: 0,
          child: TabBar(
            controller: tabController,
            indicatorColor: Colors.transparent,
            //indicatorWeight: 1,
            labelColor: AppColor.primary,
            labelStyle: TextStyle(
              color: AppColor.primary,
              fontSize: 10,
              fontFamily: 'anjoman',
              fontWeight: FontWeight.w700,
            ),
            unselectedLabelColor: AppColor.primary,
            unselectedLabelStyle: TextStyle(
              color: AppColor.primaryText,
              fontSize: 10,
              fontFamily: 'anjoman',
              fontWeight: FontWeight.w700,
            ),
            labelPadding: const EdgeInsets.symmetric(vertical: 10),
            tabs: [
              Tab(
                text: "پروفایل",
                icon: Image.asset(
                  "assets/images/account_tab.png",
                  width: 25,
                  height: 25,
                  color: selectTab == 0 ? AppColor.primary : AppColor.textTitle,
                ),
              ),
              Tab(
                text: "جست و جو",
                icon: Image.asset(
                  "assets/images/explore_tab.png",
                  width: 25,
                  height: 25,
                  color: selectTab == 1 ? AppColor.primary : AppColor.textTitle,
                ),
              ),
              Tab(
                text: "سبد خرید",
                icon: Image.asset(
                  "assets/images/cart_tab.png",
                  width: 25,
                  height: 25,
                  color: selectTab == 2 ? AppColor.primary : AppColor.textTitle,
                ),
              ),
              Tab(
                text: "دسته بندی",
                icon: Image.asset(
                  "assets/images/fav_tab.png",
                  width: 25,
                  height: 25,
                  color: selectTab == 3 ? AppColor.primary : AppColor.textTitle,
                ),
              ),
              Tab(
                text: "فروشگاه",
                icon: Image.asset(
                  "assets/images/store_tab.png",
                  width: 25,
                  height: 25,
                  color: selectTab == 4 ? AppColor.primary : AppColor.textTitle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
