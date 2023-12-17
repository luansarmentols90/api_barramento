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

  late final _$isErrorAtom =
      Atom(name: '_DashboardController.isError', context: context);

  @override
  bool get isError {
    _$isErrorAtom.reportRead();
    return super.isError;
  }

  @override
  set isError(bool value) {
    _$isErrorAtom.reportWrite(value, super.isError, () {
      super.isError = value;
    });
  }

  late final _$isLoadingLeadingAtom =
      Atom(name: '_DashboardController.isLoadingLeading', context: context);

  @override
  bool get isLoadingLeading {
    _$isLoadingLeadingAtom.reportRead();
    return super.isLoadingLeading;
  }

  @override
  set isLoadingLeading(bool value) {
    _$isLoadingLeadingAtom.reportWrite(value, super.isLoadingLeading, () {
      super.isLoadingLeading = value;
    });
  }

  late final _$modelArtsAtom =
      Atom(name: '_DashboardController.modelArts', context: context);

  @override
  List<Art>? get modelArts {
    _$modelArtsAtom.reportRead();
    return super.modelArts;
  }

  @override
  set modelArts(List<Art>? value) {
    _$modelArtsAtom.reportWrite(value, super.modelArts, () {
      super.modelArts = value;
    });
  }

  late final _$modelDistanceAtom =
      Atom(name: '_DashboardController.modelDistance', context: context);

  @override
  dynamic get modelDistance {
    _$modelDistanceAtom.reportRead();
    return super.modelDistance;
  }

  @override
  set modelDistance(dynamic value) {
    _$modelDistanceAtom.reportWrite(value, super.modelDistance, () {
      super.modelDistance = value;
    });
  }

  late final _$isApiOnlineAtom =
      Atom(name: '_DashboardController.isApiOnline', context: context);

  @override
  bool get isApiOnline {
    _$isApiOnlineAtom.reportRead();
    return super.isApiOnline;
  }

  @override
  set isApiOnline(bool value) {
    _$isApiOnlineAtom.reportWrite(value, super.isApiOnline, () {
      super.isApiOnline = value;
    });
  }

  late final _$getArtsDataApiAsyncAction =
      AsyncAction('_DashboardController.getArtsDataApi', context: context);

  @override
  Future<dynamic> getArtsDataApi() {
    return _$getArtsDataApiAsyncAction.run(() => super.getArtsDataApi());
  }

  late final _$getDistanceDataApiAsyncAction =
      AsyncAction('_DashboardController.getDistanceDataApi', context: context);

  @override
  Future<dynamic> getDistanceDataApi() {
    return _$getDistanceDataApiAsyncAction
        .run(() => super.getDistanceDataApi());
  }

  late final _$isApiOnAsyncAction =
      AsyncAction('_DashboardController.isApiOn', context: context);

  @override
  Future<void> isApiOn() {
    return _$isApiOnAsyncAction.run(() => super.isApiOn());
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
isError: ${isError},
isLoadingLeading: ${isLoadingLeading},
modelArts: ${modelArts},
modelDistance: ${modelDistance},
isApiOnline: ${isApiOnline}
    ''';
  }
}
