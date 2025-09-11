import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:veezo/utils/constants.dart';

class MLoading extends HookWidget {
  const MLoading({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(duration: kDuration * 3);
    final animation = useAnimation(
      Tween<double>(
        begin: 0.5,
        end: 1,
      ).chain(CurveTween(curve: Curves.linear)).animate(controller),
    );

    useEffect(() {
      controller..repeat(reverse: true);
      return null;
    }, []);
    return FadeTransition(
      opacity: AlwaysStoppedAnimation(animation),
      child: const Icon(RadixIcons.dotsHorizontal, size: 24),
    );
  }
}
