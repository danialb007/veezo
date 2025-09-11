import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di.config.dart';

final di = GetIt.instance;

@InjectableInit()
void configureDependencies() => di.init();

void initDependencies() {}
