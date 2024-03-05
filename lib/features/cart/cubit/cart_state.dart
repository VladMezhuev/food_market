part of 'cart_cubit.dart';

@freezed
class CartState with _$CartState {
  const factory CartState([
    @Default(false) bool loading,
  ]) = _CartState;
}
