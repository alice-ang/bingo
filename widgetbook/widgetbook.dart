import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'screens/screens.dart';
import 'widgets/wheel.story.dart';
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
              name: 'Cicles',
              widgets: [
                WidgetbookComponent(
                  name: 'CircleBackground',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'CircleBackground',
                      builder: (context) => const CircleBackgroundStory(),
                    ),
                  ],
                ),
                WidgetbookComponent(
                  name: 'Circle',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Circle',
                      builder: (context) => const CircleStory(),
                    ),
                  ],
                ),
              ],
            ),
            WidgetbookFolder(
              name: 'Neu',
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
                WidgetbookComponent(
                  name: 'NeuButton',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'NeuButton',
                      builder: (context) => const NeuButtonStory(),
                    ),
                  ],
                ),
              ],
            ),
            WidgetbookFolder(
              name: 'AppBar',
              widgets: [
                WidgetbookComponent(
                  name: 'Wavy',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'CustomAppBar ',
                      builder: (context) => const CustomAppBarStory(),
                    ),
                  ],
                ),
              ],
            ),
          ],
          widgets: [
            WidgetbookComponent(
              name: 'Grid',
              useCases: [
                WidgetbookUseCase(
                  name: 'Grid',
                  builder: (context) => const GridStory(),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Wheel',
              useCases: [
                WidgetbookUseCase(
                  name: 'Wheel',
                  builder: (context) => const WheelStory(),
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
                      builder: (context) => const LoginScreenStory(),
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
      appInfo: AppInfo(name: 'Kooligans'),
    );
  }
}
