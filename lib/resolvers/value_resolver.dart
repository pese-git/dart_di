import 'package:dart_di/resolvers/resolver.dart';

/**
 * Разрешает зависимость для значения
 */
class ValueResolver<T> extends Resolver<T> {
  T _value;

  ValueResolver(this._value);

  @override
  T resolve({String? named}) {
    return _value;
  }
}
