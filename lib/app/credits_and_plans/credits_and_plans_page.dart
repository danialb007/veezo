import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:gpt_markdown/gpt_markdown.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:shadcn_flutter/shadcn_flutter_extension.dart';
import 'package:veezo/domain/payment/plan_provider.dart';
import 'package:veezo/i18n/strings.g.dart';
import 'package:veezo/routes.dart';

class CreditsAndPlansPage extends HookConsumerWidget {
  const CreditsAndPlansPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabIndex = useState(0);
    final plans = ref.watch(planProvider);

    return Scaffold(
      backgroundColor: Colors.neutral.shade800,
      headers: [
        AppBar(
          title: Text(t.creditsPlans.creditsAndPlans).textCenter,
          leading: [
            IconButton.ghost(
              onPressed: () => context.canPop()
                  ? context.pop()
                  : context.go(routePaths.chat.path),
              icon: Icon(LucideIcons.x),
            ),
          ],
          trailing: [
            Visibility.maintain(
              visible: false,
              child: IconButton.ghost(icon: Icon(LucideIcons.x)),
            ),
          ],
        ),
      ],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Center(
              child: Theme(
                data: context.theme.copyWith(
                  colorScheme: () => context.theme.colorScheme.copyWith(
                    muted: () => Colors.zinc.shade900,
                  ),
                ),
                child: Tabs(
                  index: tabIndex.value,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  children: [
                    TabItem(child: Text(t.creditsPlans.credits)),
                    TabItem(child: Text(t.creditsPlans.plans)),
                  ],
                  onChanged: (int value) {
                    tabIndex.value = value;
                  },
                ),
              ),
            ),
          ),
          Theme(
            data: context.theme.copyWith(
              colorScheme: () =>
                  context.theme.colorScheme.copyWith(card: () => Colors.black),
            ),
            child: Expanded(
              child: plans.when(
                error: (_, _) => Text('err'),
                loading: () => Center(child: CircularProgressIndicator()),
                data: (data) {
                  return ListView.separated(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    itemCount: data.length,
                    separatorBuilder: (context, index) => Gap(24),
                    itemBuilder: (context, index) {
                      final item = data[index];
                      return Card(
                        padding: EdgeInsets.all(24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          spacing: 16,
                          children: [
                            Text(
                              item.title,
                              style: context.theme.typography.h2,
                            ).textCenter,
                            Row(
                              spacing: 4,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(LucideIcons.coins),
                                Text(
                                  "${item.credits.toString()} ${t.creditsPlans.credits}",
                                ).h4,
                              ],
                            ),
                            GptMarkdown(
                              item.description,
                              style: context.theme.typography.p.merge(
                                context.theme.typography.textMuted,
                              ),
                            ),
                            Button.primary(
                              onPressed: () {},
                              child: Text(t.creditsPlans.purchase).medium,
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
