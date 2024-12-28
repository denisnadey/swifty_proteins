import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:swifty_proteins/core/di/di.config.dart';

final locator = GetIt.instance;

@InjectableInit()
Future<void> injectDependencies() async {
  locator.init();
}
