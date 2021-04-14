import 'package:dart_di/resolvers/resolver.dart';

class NamedResolver<T> extends Resolver<T> {
  Resolver<T> _decoratedResolver;
  String _named;

  NamedResolver(this._decoratedResolver, this._named);

  @override
  T? resolve({String? named}) {
    return _named == named ? _decoratedResolver.resolve() : null;
  }
}
