// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DashboardController on _DashboardController, Store {
  late final _$isLoadingAtom =
      Atom(name: '_DashboardController.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$modelAtom =
      Atom(name: '_DashboardController.model', context: context);

  @override
  dynamic get model {
    _$modelAtom.reportRead();
    return super.model;
  }

  @override
  set model(dynamic value) {
    _$modelAtom.reportWrite(value, super.model, () {
      super.model = value;
    });
  }

  late final _$getDataApiAsyncAction =
      AsyncAction('_DashboardController.getDataApi', context: context);

  @override
  Future<dynamic> getDataApi() {
    return _$getDataApiAsyncAction.run(() => super.getDataApi());
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
model: ${model}
    ''';
  }
}
