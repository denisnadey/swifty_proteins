// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:swifty_proteins/core/navigation/routes/auth_route.dart' as _i1;
import 'package:swifty_proteins/core/navigation/routes/collection_route.dart'
    as _i2;
import 'package:swifty_proteins/core/navigation/routes/home_route.dart' as _i3;
import 'package:swifty_proteins/core/navigation/routes/ligand_info_route.dart'
    as _i4;
import 'package:swifty_proteins/core/navigation/routes/register_route.dart'
    as _i5;

/// generated route for
/// [_i1.AuthPage]
class AuthRoute extends _i6.PageRouteInfo<void> {
  const AuthRoute({List<_i6.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i1.AuthPage();
    },
  );
}

/// generated route for
/// [_i2.CollectionPage]
class CollectionRoute extends _i6.PageRouteInfo<CollectionRouteArgs> {
  CollectionRoute({
    _i7.Key? key,
    required List<String> ligands,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          CollectionRoute.name,
          args: CollectionRouteArgs(
            key: key,
            ligands: ligands,
          ),
          initialChildren: children,
        );

  static const String name = 'CollectionRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CollectionRouteArgs>();
      return _i2.CollectionPage(
        key: args.key,
        ligands: args.ligands,
      );
    },
  );
}

class CollectionRouteArgs {
  const CollectionRouteArgs({
    this.key,
    required this.ligands,
  });

  final _i7.Key? key;

  final List<String> ligands;

  @override
  String toString() {
    return 'CollectionRouteArgs{key: $key, ligands: $ligands}';
  }
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomePage();
    },
  );
}

/// generated route for
/// [_i4.LigandInfoPage]
class LigandInfoRoute extends _i6.PageRouteInfo<LigandInfoRouteArgs> {
  LigandInfoRoute({
    _i7.Key? key,
    required String ligand,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          LigandInfoRoute.name,
          args: LigandInfoRouteArgs(
            key: key,
            ligand: ligand,
          ),
          initialChildren: children,
        );

  static const String name = 'LigandInfoRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LigandInfoRouteArgs>();
      return _i4.LigandInfoPage(
        key: args.key,
        ligand: args.ligand,
      );
    },
  );
}

class LigandInfoRouteArgs {
  const LigandInfoRouteArgs({
    this.key,
    required this.ligand,
  });

  final _i7.Key? key;

  final String ligand;

  @override
  String toString() {
    return 'LigandInfoRouteArgs{key: $key, ligand: $ligand}';
  }
}

/// generated route for
/// [_i5.RegisterRoute]
class RegisterRoute extends _i6.PageRouteInfo<void> {
  const RegisterRoute({List<_i6.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i5.RegisterRoute();
    },
  );
}