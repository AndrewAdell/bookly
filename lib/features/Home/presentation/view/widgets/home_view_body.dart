import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/Home/presentation/view/widgets/best_seller_list_view.dart';
import 'package:bookly/features/Home/presentation/view/widgets/home_app_bar.dart';
import 'package:bookly/features/Home/presentation/view/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 30),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeAppBar(),
                FeaturedListView(),
                SizedBox(
                  height: 50,
                ),
                Text('Best Seller', style: Styles.textStyle18),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(child: BestSellerListView()),
        ],
      ),
    );
  }
}
