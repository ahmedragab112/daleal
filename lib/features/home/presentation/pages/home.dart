import 'package:daleal/config/router/app_routes.dart';
import 'package:daleal/core/extention/extentions.dart';
import 'package:daleal/features/home/presentation/cubit/home_cubit.dart';
import 'package:daleal/features/home/presentation/widgets/custom_bottomnavigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              await context.read<HomeCubit>().signOut().then((value) {
                context.pushReplacementNamed(AppRoutes.loginPage);
              });
            },
            child: const Text('Sign Out')),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
