import 'package:club_sample/src/features/club/cubit/club_cubit.dart';
import 'package:club_sample/src/features/club/model/club_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClubPage extends StatefulWidget {
  const ClubPage({Key? key}) : super(key: key);

  @override
  State<ClubPage> createState() => _ClubPageState();
}

class _ClubPageState extends State<ClubPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ClubCubit()..getClubData(),
      child: Scaffold(
        appBar: AppBar(title: const Text("Premier League"),backgroundColor: Colors.teal,),
        backgroundColor: Colors.teal,
        body: BlocBuilder<ClubCubit, ClubState>(
          builder: (context, state) {
            if (state is ClubInitial) {
              return Container();
            } else if (state is ClubLoading) {
              return const CupertinoActivityIndicator();
            } else if (state is ClubLoaded) {
              List<ClubModel> clubs = state.clubList;
              return ListView.builder(
                  itemCount: clubs.length,
                  itemBuilder: (_, pos) {
                    ClubModel club = clubs[pos];
                    return Card(
                      color: Colors.black87,
                      child: ListTile(
                          leading: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.teal,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Text(
                                  club.code ?? "",
                                  style: const TextStyle(color: Colors.black),
                                ),
                              )),
                          title: Text(
                            club.name ?? "",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(club.country ?? "",style: const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),)),
                    );
                  });
            }
            return Container();
          },
        ),
      ),
    );
  }
}
