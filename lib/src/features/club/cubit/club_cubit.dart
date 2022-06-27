import 'package:bloc/bloc.dart';
import 'package:club_sample/src/features/club/model/club_model.dart';
import 'package:club_sample/src/features/club/cubit/club_repository.dart';
import 'package:equatable/equatable.dart';

part 'club_state.dart';

class ClubCubit extends Cubit<ClubState> {
  ClubCubit() : super(ClubInitial());

  getClubData() async {
    emit(ClubLoading());
    List<ClubModel> clubList =await ClubRepository().getData();
    emit(ClubLoaded(clubList));
  }
}