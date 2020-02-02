import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:two_do/core/error/failures.dart';
import 'package:two_do/features/manage_tasks/domain/entities/twodo_task_entity.dart';

abstract class UseCase<Type, Params>{
  Future<Either<Failure, TwoDoTask>> call(Params params);
}

class NoParams extends Equatable{
  @override
  // TODO: implement props
  List<Object> get props => null;

}