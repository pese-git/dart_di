import 'package:dart_di/di_container.dart';
import 'package:dart_di/resolvers/factory_resolver.dart';
import 'package:dart_di/resolvers/named_resolver.dart';
import 'package:dart_di/resolvers/resolver.dart';
import 'package:dart_di/resolvers/singelton_resolver.dart';
import 'package:dart_di/resolvers/value_resolver.dart';

class ResolvingContext<T> extends Resolver {
  /// Корневой резолвер
  Resolver<T> get resolver {
    return _resolver as Resolver<T>;
  }

  DiContainer _container;

  late Resolver _resolver;

  ResolvingContext(this._container);

/**
     * Разрешает зависимость типа [T]
     * @return - возвращает объект типа [T]
     */
  @override
  T? resolve({String? named}) {
    _verify();
    return _resolver.resolve(named: named);
  }

  /**
     * Добавляет резолвер в качестве корневого резолвера
     * С помощью этого метода вы можете добавить любой
     * пользовательский резолвер
     */
  ResolvingContext<T> toResolver<TImpl extends T>(Resolver<TImpl> resolver) {
    _resolver = resolver;
    return this;
  }

  /**
     *  Создать резолвер значения
     */
  ResolvingContext<T> toValue<TImpl extends T>(T value) {
    Resolver<TImpl> resolver = ValueResolver(value as TImpl);
    return toResolver<TImpl>(resolver);
  }

  /**
     * Преобразователь в сингелтон
     */
  ResolvingContext<T> asSingleton() {
    return toResolver(SingletonResolver<T>(resolver));
  }

  /**
     * Преобразователь в сингелтон
     */
  ResolvingContext<T> named(String named) {
    return toResolver(NamedResolver<T>(resolver, named));
  }

  /**
     * Создать фабричный resolver без каких-либо зависимостей
     */
  ResolvingContext<T> toFactory<TImpl extends T>(TImpl Function() factory) {
    Resolver<TImpl> resolver = FactoryResolver<TImpl>(factory);
    return toResolver(resolver);
  }

  /**
     * Создать фабричный resolver с 1 зависимостью от контейнера
     */
  ResolvingContext<T> toFactory1<T1>(T Function(T1) factory, {String? named1}) {
    Resolver<T> resolver = FactoryResolver<T>(
        () => factory(_container.resolve<T1>(named: named1)));
    return toResolver(resolver);
  }

  /**
     * Создать фабричный resolver с 2 зависимостями от контейнера
     */
  ResolvingContext<T> toFactory2<T1, T2>(
    T Function(T1, T2) factory, {
    String? named1,
    String? named2,
  }) {
    Resolver<T> resolver = FactoryResolver<T>(() => factory(
          _container.resolve<T1>(named: named1),
          _container.resolve<T2>(named: named2),
        ));
    return toResolver(resolver);
  }

  /**
     * Создать фабричный resolver с 3 зависимостями от контейнера
     */
  ResolvingContext<T> toFactory3<T1, T2, T3>(
    T Function(T1, T2, T3) factory, {
    String? named1,
    String? named2,
    String? named3,
  }) {
    Resolver<T> resolver = FactoryResolver<T>(() => factory(
        _container.resolve<T1>(named: named1),
        _container.resolve<T2>(named: named2),
        _container.resolve<T3>(named: named3)));
    return toResolver(resolver);
  }

  /**
     * Создать фабричный resolver с 4 зависимостями от контейнера
     */
  ResolvingContext<T> toFactory4<T1, T2, T3, T4>(
    T Function(T1, T2, T3, T4) factory, {
    String? named1,
    String? named2,
    String? named3,
    String? named4,
  }) {
    Resolver<T> resolver = FactoryResolver<T>(() => factory(
        _container.resolve<T1>(named: named1),
        _container.resolve<T2>(named: named2),
        _container.resolve<T3>(named: named3),
        _container.resolve<T4>(named: named4)));
    return toResolver(resolver);
  }

  /**
     * Создать фабричный resolver с 5 зависимостями от контейнера
     */
  ResolvingContext<T> toFactory5<T1, T2, T3, T4, T5>(
    T Function(T1, T2, T3, T4, T5) factory, {
    String? named1,
    String? named2,
    String? named3,
    String? named4,
    String? named5,
  }) {
    Resolver<T> resolver = FactoryResolver<T>(() => factory(
        _container.resolve<T1>(named: named1),
        _container.resolve<T2>(named: named2),
        _container.resolve<T3>(named: named3),
        _container.resolve<T4>(named: named4),
        _container.resolve<T5>(named: named5)));
    return toResolver(resolver);
  }

  /**
     * Создать фабричный resolver с 6 зависимостями от контейнера
     */
  ResolvingContext<T> toFactory6<T1, T2, T3, T4, T5, T6>(
    T Function(T1, T2, T3, T4, T5, T6) factory, {
    String? named1,
    String? named2,
    String? named3,
    String? named4,
    String? named5,
    String? named6,
  }) {
    Resolver<T> resolver = FactoryResolver<T>(() => factory(
        _container.resolve<T1>(named: named1),
        _container.resolve<T2>(named: named2),
        _container.resolve<T3>(named: named3),
        _container.resolve<T4>(named: named4),
        _container.resolve<T5>(named: named5),
        _container.resolve<T6>(named: named6)));
    return toResolver(resolver);
  }

  /**
     * Создать фабричный resolver с 7 зависимостями от контейнера
     */
  ResolvingContext<T> toFactory7<T1, T2, T3, T4, T5, T6, T7>(
    T Function(T1, T2, T3, T4, T5, T6, T7) factory, {
    String? named1,
    String? named2,
    String? named3,
    String? named4,
    String? named5,
    String? named6,
    String? named7,
  }) {
    Resolver<T> resolver = FactoryResolver<T>(() => factory(
        _container.resolve<T1>(named: named1),
        _container.resolve<T2>(named: named2),
        _container.resolve<T3>(named: named3),
        _container.resolve<T4>(named: named4),
        _container.resolve<T5>(named: named5),
        _container.resolve<T6>(named: named6),
        _container.resolve<T7>(named: named7)));
    return toResolver(resolver);
  }

  /**
     * Создать фабричный resolver с 8 зависимостями от контейнера
     */
  ResolvingContext<T> toFactory8<T1, T2, T3, T4, T5, T6, T7, T8>(
    T Function(T1, T2, T3, T4, T5, T6, T7, T8) factory, {
    String? named1,
    String? named2,
    String? named3,
    String? named4,
    String? named5,
    String? named6,
    String? named7,
    String? named8,
  }) {
    Resolver<T> resolver = FactoryResolver<T>(() => factory(
        _container.resolve<T1>(named: named1),
        _container.resolve<T2>(named: named2),
        _container.resolve<T3>(named: named3),
        _container.resolve<T4>(named: named4),
        _container.resolve<T5>(named: named5),
        _container.resolve<T6>(named: named6),
        _container.resolve<T7>(named: named7),
        _container.resolve<T8>(named: named8)));
    return toResolver(resolver);
  }

  void _verify() {
    if (_resolver == null) {
      throw StateError("Can\'t resolve T without any resolvers. " +
          "Please check, may be you didn\'t do anything after bind()");
    }
  }
}
