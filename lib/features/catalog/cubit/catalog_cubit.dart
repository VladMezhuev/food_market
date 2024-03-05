import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'catalog_state.dart';
part 'catalog_cubit.freezed.dart';

@injectable
class CatalogCubit extends Cubit<CatalogState> {
  CatalogCubit() : super(const CatalogState());
}
