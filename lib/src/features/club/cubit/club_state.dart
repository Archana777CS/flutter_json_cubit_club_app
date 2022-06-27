part of 'club_cubit.dart';

abstract class ClubState extends Equatable {
  const ClubState();
}

class ClubInitial extends ClubState {
  @override
  List<Object> get props => [];
}

class ClubLoading extends ClubState {
  @override
  List<Object> get props => [];
}
class ClubLoaded extends ClubState {
final  List<ClubModel> clubList;

const ClubLoaded(this.clubList);

  @override
  List<Object> get props => [];
}
class ClubLoadError extends ClubState {
  @override
  List<Object> get props => [];
}
