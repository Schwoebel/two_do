import 'package:dartz/dartz.dart';
import 'package:two_do/core/error/failures.dart';
import 'package:two_do/features/manage_tasks/domain/entities/twodo_task_entity.dart';

abstract class ManageTasksRepository {
  Future<Either<Failure, bool>> createTask();

  Future<Either<Failure, TwoDoTask>> readTask();

  Future<Either<Failure, bool>> updateTask();

  Future<Either<Failure, bool>> deleteTask();

  Future<Either<Failure, TwoDoTask>> getTaskFromRemoteSource();

  Future<Either<Failure, TwoDoTask>> getTaskFromLocalSource();


}
