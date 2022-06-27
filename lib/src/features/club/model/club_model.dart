import 'dart:convert';
ClubModel clubModelFromJson(String str) => ClubModel.fromJson(json.decode(str));
String clubModelToJson(ClubModel data) => json.encode(data.toJson());
class ClubModel {
  ClubModel({
      String? name, 
      String? code, 
      String? country,}){
    _name = name;
    _code = code;
    _country = country;
}

  ClubModel.fromJson(dynamic json) {
    _name = json['name'];
    _code = json['code'];
    _country = json['country'];
  }
  String? _name;
  String? _code;
  String? _country;
ClubModel copyWith({  String? name,
  String? code,
  String? country,
}) => ClubModel(  name: name ?? _name,
  code: code ?? _code,
  country: country ?? _country,
);
  String? get name => _name;
  String? get code => _code;
  String? get country => _country;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['code'] = _code;
    map['country'] = _country;
    return map;
  }

}