import 'story.dart';

class StoryBrain {
  int _storyIndex = 0;

  final List<Story> _storyData = [
    Story(
        // Story 0
        storyTitle:
            'У вашої машини лопнуло колесо на звивистій дорозі в глушині, де немає мобільного зв\'язку. Ви вирішили їхати автостопом. Іржавий пікап з гуркотом зупиняється поруч з вами. Чоловік у крислатому капелюсі з бездушними очима відчиняє пасажирські дверцята і запитує: "Підвезти, хлопче?".',
        choice1: 'Я заскочу. Дякую за допомогу!',
        choice2: 'Краще спочатку запитайте його, чи він не вбивця.'),
    Story(
        // Story 1
        storyTitle: 'Він повільно киває, незважаючи на запитання.',
        choice1: 'Принаймні, він чесний. Я залізу.',
        choice2: 'Зачекай, я знаю, як поміняти колесо.'),
    Story(
        // Story 2
        storyTitle:
            'Коли ви починаєте їхати, незнайомець починає розповідати про свої стосунки з матір\'ю. З кожною хвилиною він стає все злішим і злішим. Він просить вас відкрити бардачок. Усередині ви знаходите закривавлений ніж, два відрізані пальці і касету з записом Елтона Джона. Він тягнеться до бардачка.',
        choice1: 'Я люблю Елтона Джона! Дай йому касету',
        choice2: 'Або він, або я! Візьми ножа і заріж його.'),
    Story(
        // Story 3
        storyTitle:
            'Що? Яка відмовка! Чи знали ви, що дорожньо-транспортні пригоди є другою провідною причиною смерті від нещасних випадків для більшості дорослих вікових груп?',
        choice1: '',
        choice2: 'Restart'),
    Story(
        // Story 4
        storyTitle:
            'Пробиваючись крізь огорожу і мчачись до зубчастих скель внизу, ви роздумуєте про сумнівну мудрість нанесення ножового поранення комусь, хто перебуває за кермом автомобіля, в якому ви перебуваєте.',
        choice1: '',
        choice2: 'Restart'),
    Story(
        // Story 5
        storyTitle:
            'Ви зв\'язуєтеся з убивцею, наспівуючи куплети з пісні "Can you feel the love tonight". Він висаджує вас у наступному місті. Перед від\'їздом він запитує, чи знаєте ви якісь гарні місця, де можна викинути тіла. Ви відповідаєте: "Спробуй на пірсі".',
        choice1: '',
        choice2: 'Restart')
  ];

  String getStory() {
    return _storyData[_storyIndex].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyIndex].choice1;
  }

  String getChoice2() {
    return _storyData[_storyIndex].choice2;
  }

  int getStatusIndexStory() {
    return _storyIndex;
  }

  void restart() {
    _storyIndex = 0;
  }

  void nextPart(bool choiseValue) {
    if (_storyIndex == 0) {
      if (choiseValue) {
        _storyIndex = 2;
      } else {
        _storyIndex = 1;
      }
    } else if (_storyIndex == 1) {
      if (choiseValue) {
        _storyIndex = 2;
      } else {
        _storyIndex = 3;
      }
    } else if (_storyIndex == 2) {
      if (choiseValue) {
        _storyIndex = 5;
      } else {
        _storyIndex = 4;
      }
    } else if (_storyIndex == 3) {
      restart();
    } else if (_storyIndex == 4) {
      restart();
    } else if (_storyIndex == 5) {
      restart();
    }
  }
}
