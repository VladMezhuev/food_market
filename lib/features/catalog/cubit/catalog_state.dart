part of 'catalog_cubit.dart';

@freezed
class CatalogState with _$CatalogState {
  const factory CatalogState([
    @Default(false) bool loading,
  ]) = _CatalogState;
}
