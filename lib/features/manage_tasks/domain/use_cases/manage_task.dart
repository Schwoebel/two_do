import 'package:dartz/dartz.dart';
import 'package:two_do/core/error/failures.dart';
import 'package:two_do/features/manage_tasks/domain/entities/twodo_task_entity.dart';
import 'package:two_do/features/manage_tasks/domain/repositories/manage_tasks_repository.dart';

class ManageTask{
  final ManageTasksRepository repository;

  ManageTask(this.repository);

  Future<Either<Failure, bool>> create(){
    return repository.createTask();
  }

  Future<Either<Failure, TwoDoTask>> read(){
    return repository.readTask();
  }

  Future<Either<Failure, bool>> update(){
    return repository.updateTask();
  }

  Future<Either<Failure, bool>> delete(){
    return repository.deleteTask();
  }

}