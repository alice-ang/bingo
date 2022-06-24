import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:bingo/widgets/widgets.dart';
import 'package:bingo/screens/screens.dart';

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
                  name: 'NeuButton',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => const Text(
                        'The brown fox ...',
                      ),
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
                  builder: (context) => SizedBox(
                    height: 180,
                    child: NeuCard(
                      header: context.knobs
                          .text(label: 'Header', initialValue: 'Header'),
                      title: context.knobs
                          .text(label: 'Title', initialValue: 'Title'),
                      subTitle: context.knobs
                          .text(label: 'Subtitle', initialValue: 'Subtitle'),
                    ),
                  ),
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
                  name: 'Games',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'GamesScreen',
                      builder: (context) => const GamesScreen(),
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
