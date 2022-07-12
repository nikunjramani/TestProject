import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'student.g.dart';

class Student extends Equatable {
  final int id;
  final String name;
  const Student({this.id = 0, this.name = ""});

  @override
  List<Object?> get props => [id, name];
}

@JsonSerializable(explicitToJson: true)
class StudentModel extends Student {
  const StudentModel(
      {int id = 0, String name = "", Room studentRoom = const Room()});

  factory StudentModel.fromJson(Map<String, dynamic> json) =>
      _$StudentModelFromJson(json);

  Map<String, dynamic> toJson() => _$StudentModelToJson(this);
}

/// * Room & RoomModel

class Room extends Equatable {
  final int id;
  final String roomName;

  const Room({this.id = 0, this.roomName = ""});

  @override
  List<Object?> get props => [id, roomName];
}

@JsonSerializable()
class RoomModel extends Room {
  const RoomModel({int id = 0, String roomName = ""})
      : super(id: id, roomName: roomName);

  factory RoomModel.fromJson(Map<String, dynamic> json) =>
      _$RoomModelFromJson(json);

  Map<String, dynamic> toJson() => _$RoomModelToJson(this);
}
