import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:two_do/features/manage_tasks/domain/entities/twodo_task_entity.dart';

class TwoDoTaskModel extends TwoDoTask {
  TwoDoTaskModel(
      bool active,
      Timestamp createDate,
      String description,
      Timestamp dueDate,
      Timestamp lastEdited,
      String pair,
      int priority,
      String title)
      : super(
          active,
          createDate,
          description,
          dueDate,
          lastEdited,
          pair,
          priority,
          title,
        );
}
