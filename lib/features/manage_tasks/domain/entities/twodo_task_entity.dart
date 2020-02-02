import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class TwoDoTask extends Equatable {
  final bool active;
  final Timestamp createDate;
  final String description;
  final Timestamp dueDate;
  final Timestamp lastEdited;
  final String pair;
  final int priority;
  final String title;

  TwoDoTask(
    this.active,
    this.createDate,
    this.description,
    this.dueDate,
    this.lastEdited,
    this.pair,
    this.priority,
    this.title,
  );

  @override
  // TODO: implement props
  List<Object> get props => [
        active,
        createDate,
        description,
        dueDate,
        lastEdited,
        pair,
        priority,
        title,
      ];
}
