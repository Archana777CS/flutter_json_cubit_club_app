import 'dart:convert';
import 'package:club_sample/src/features/club/model/club_model.dart';
import 'package:flutter/services.dart';


class ClubRepository{
  Future<String> readJsonFile() async {
    String jsonData =  await rootBundle.loadString("assets/data/club.json");
    return jsonData;
  }

  getData() async{
    String jsonData= await readJsonFile();
    Map<String,dynamic> decodedJson =jsonDecode(jsonData);
    List<dynamic> clubDetails = decodedJson["clubs"];
    List<ClubModel> clubModelList = clubDetails.map((club) =>ClubModel.fromJson(club)).toList();//we will get a group od club model,
    return clubModelList;

  }
}