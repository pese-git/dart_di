import 'package:dart_di/di_container.dart';
import 'package:dart_di/resolvers/resolver.dart';

class ResolvingContext<T> extends Resolver {
  DiContainer _container;

  // Корневой резолвер
  Resolver _resolver;

  ResolvingContext(this._container);

/**
     * Разрешает зависимость типа [T]
     * @return - возвращает объект типа [T]
     */
  @override
  T resolve() {
    // TODO: implement resolve
    throw UnimplementedError();
  }

  /**
     * Добавляет резолвер в качестве корневого резолвера
     * С помощью этого метода вы можете добавить любой
     * пользовательский резолвер
     */
  ResolvingContext<T> toResolver<TImpl extends T>(Resolver<TImpl> resolver) {
    // TODO: implement toResolver
    throw UnimplementedError();
  }

  /**
     *  Создать резолвер значения
     */
  ResolvingContext<T> toValue<TImpl extends T>(T value) {
    // TODO: implement toValue
    throw UnimplementedError();
  }

  /**
     * Преобразователь в сингелтон
     */
  ResolvingContext<T> asSingleton() {
    // TODO: implement asSingleton
    throw UnimplementedError();
  }

  /**
     * Создать фабричный resolver без каких-либо зависимостей
     */
  ResolvingContext<T> toFactory<TImpl extends T>(TImpl Function() factory) {
    // TODO: implement toFactory
    throw UnimplementedError();
  }

  /**
     * Создать фабричный resolver с 1 зависимостью от контейнера
     */
  ResolvingContext<T> toFactory1<T1>(T Function(T1) factory) {
    // TODO: implement toFactory1
    throw UnimplementedError();
  }

  /**
     * Создать фабричный resolver с 2 зависимостями от контейнера
     */
  ResolvingContext<T> toFactory2<T1, T2>(T Function(T1, T2) factory) {
    // TODO: implement toFactory2
    throw UnimplementedError();
  }

  /**
     * Создать фабричный resolver с 3 зависимостями от контейнера
     */
  ResolvingContext<T> toFactory3<T1, T2, T3>(T Function(T1, T2, T3) factory) {
    // TODO: implement toFactory3
    throw UnimplementedError();
  }

  /**
     * Создать фабричный resolver с 4 зависимостями от контейнера
     */
  ResolvingContext<T> toFactory4<T1, T2, T3, T4>(
      T Function(T1, T2, T3, T4) factory) {
    // TODO: implement toFactory4
    throw UnimplementedError();
  }

  /**
     * Создать фабричный resolver с 5 зависимостями от контейнера
     */
  ResolvingContext<T> toFactory5<T1, T2, T3, T4, T5>(
      T Function(T1, T2, T3, T4, T5) factory) {
    // TODO: implement toFactory5
    throw UnimplementedError();
  }

  /**
     * Создать фабричный resolver с 6 зависимостями от контейнера
     */
  ResolvingContext<T> toFactory6<T1, T2, T3, T4, T5, T6>(
      T Function(T1, T2, T3, T4, T5, T6) factory) {
    // TODO: implement toFactory6
    throw UnimplementedError();
  }

  /**
     * Создать фабричный resolver с 7 зависимостями от контейнера
     */
  ResolvingContext<T> toFactory7<T1, T2, T3, T4, T5, T6, T7>(
      T Function(T1, T2, T3, T4, T5, T6, T7) factory) {
    // TODO: implement toFactory7
    throw UnimplementedError();
  }

  /**
     * Создать фабричный resolver с 8 зависимостями от контейнера
     */
  ResolvingContext<T> toFactory8<T1, T2, T3, T4, T5, T6, T7, T8>(
      T Function(T1, T2, T3, T4, T5, T6, T7, T8) factory) {
    // TODO: implement toFactory8
    throw UnimplementedError();
  }
}
