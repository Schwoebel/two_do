import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:two_do/core/error/failures.dart';
import 'package:two_do/core/use_cases/use_case.dart';
import 'package:two_do/features/manage_tasks/domain/entities/twodo_task_entity.dart';
import 'package:two_do/features/manage_tasks/domain/repositories/manage_tasks_repository.dart';

class GetClassFromRemoteSource implements UseCase<TwoDoTask, Params> {
  final ManageTasksRepository repository;

  GetClassFromRemoteSource(this.repository);

  @override
  Future<Either<Failure, TwoDoTask>> call(Params params) {
    return repository.getTaskFromRemoteSource();
  }

}

class Params extends Equatable {
  final String id;

  Params(this.id);

  @override
  // TODO: implement props
  List<Object> get props => [id];
}
