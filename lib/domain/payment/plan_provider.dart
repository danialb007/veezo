import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:veezo/api.dart';

final planProvider = FutureProvider((ref) async {
  return await Api.I.payment.paymentPlanList();
});
