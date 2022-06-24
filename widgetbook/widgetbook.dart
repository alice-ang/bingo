import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:bingo/screens/screens.dart';

import 'screens/screens.dart';
import 'widgets/widgets.dart';

class HotReload extends StatelessWidget {
  const HotReload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      categories: [
        WidgetbookCategory(
          name: 'Widgets',
          folders: [
            WidgetbookFolder(
              name: 'Buttons',
              widgets: [
                WidgetbookComponent(
                  name: 'Cicles',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'CircleBackground',
                      builder: (context) => const CircleBackgroundStory(),
                    ),
                  ],
                ),
              ],
            ),
          ],
          widgets: [
            WidgetbookComponent(
              name: 'NeuCard',
              useCases: [
                WidgetbookUseCase(
                  name: 'NeuCard',
                  builder: (context) => const NeuCardStory(),
                ),
              ],
            ),
          ],
        ),
        WidgetbookCategory(
          name: 'Screens',
          folders: [
            WidgetbookFolder(
              name: 'Login',
              widgets: [
                WidgetbookComponent(
                  name: 'LoginScreen',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'LoginScreen',
                      builder: (context) => const LoginScreen(),
                    ),
                  ],
                ),
              ],
            ),
            WidgetbookFolder(
              name: 'Games',
              widgets: [
                WidgetbookComponent(
                  name: 'GamesScreen',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'GamesScreen',
                      builder: (context) => const GamesScreenStory(),
                    ),
                  ],
                ),
              ],
            ),
          ],
          widgets: [],
        ),
      ],
      themes: [
        WidgetbookTheme(
          name: 'Light',
          data: ThemeData.light(),
        ),
        WidgetbookTheme(
          name: 'Dark',
          data: ThemeData.dark(),
        ),
      ],
      appInfo: AppInfo(name: 'Meal App'),
    );
  }
}
