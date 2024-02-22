import 'package:bloc/bloc.dart';
import 'package:daleal/features/home/data/repositories/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo homeRepo;
  HomeCubit({required this.homeRepo}) : super(HomeInitial());
  Future<void> signOut() async {
    await homeRepo.signOut();
  }
}
