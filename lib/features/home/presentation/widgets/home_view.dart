import 'package:daleal/core/utils/spaceing/spaceing.dart';
import 'package:daleal/features/home/presentation/widgets/custom_homeappbar.dart';
import 'package:daleal/features/home/presentation/widgets/home_modual.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: VerticalSpace(28),
        ),
        SliverToBoxAdapter(
          child: CustomHomeAppBar(),
        ),
        SliverToBoxAdapter(
          child: VerticalSpace(7),
        ),
        SliverToBoxAdapter(child: HomeModual())
      ],
    );
  }
}
