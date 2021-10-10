import 'package:vtb_game_win/common/debug.dart';
import 'package:vtb_game_win/domain/entities/event.dart';

const smallNegative = Impact(moneyImpact: -50000, riskImpact: 0);
const smallPositive = Impact(moneyImpact: 142404, riskImpact: 2);
const smallPositive2 = Impact(moneyImpact: 152890, riskImpact: 8);

const ofzFirstCard = GameCard(
    image: 'ofz.png',
    text: 'ОФЗ 26224',
    sell: smallNegative,
    hold: zeroImpact,
    buy: smallPositive,
    isTutorial: false);

const card2 = GameCard(
    image: 'amd1.png',
    text: 'AMD',
    sell: smallNegative,
    hold: zeroImpact,
    buy: smallPositive2,
    isTutorial: false);
const card3 = GameCard(
    image: 'amd1.png',
    text: 'Tesla',
    sell: smallNegative,
    hold: zeroImpact,
    buy: smallPositive2,
    isTutorial: false);
List<GameEvent> productionEvents = [
  GameEvent(
      id: 3,
      eventText: 'Выпущено Минфином.',
      gameCard: ofzFirstCard,
      multipliers: {}),
  GameEvent(
      id: 4,
      eventText:
          'Отлично!\nКомпании тоже могут выпускать облигации. Им присваивается рейтинг безопасности в зависимости от надёжности фирмы.',
      gameCard: secondTutor,
      multipliers: {}),
  GameEvent(
      id: 5,
      eventText:
          'Акции - это ещё один финансовый инструмент. Покупая акцию, вы покупаете долю в компании. При покупке акции стоит ориентироваться на надёжность организации и на потенциал роста.',
      gameCard: firstCard,
      multipliers: {}),
  GameEvent(
      id: 6,
      eventText:
          'Чтобы оценить положение компании существуют мультипликаторы. Вы можете ознакомиться с некоторыми из них, открыв справку карточки. Позже мы разберём их подробнее.',
      gameCard: tutor4,
      multipliers: {}),
  // GameEvent(
  //     id: 7,
  //     eventText: 'А теперь давайте добавим несколько акций в наш портфель.',
  //     gameCard: tutor4,
  //     multipliers: {}),
  GameEvent(
      id: 7,
      eventText: 'Компания AMD. Занимается производством электронники.',
      gameCard: card2,
      multipliers: {}),
  GameEvent(
      id: 8,
      eventText:
          'Компания Tesla. У неё есть потенциал, но не слишком ли она переоценена?',
      gameCard: card3,
      multipliers: {}),
  GameEvent(
      id: 10,
      eventText: 'А теперь давайте добавим несколько акций в наш портфель.',
      gameCard: tutor4,
      multipliers: {}),
  GameEvent(
      id: 10,
      eventText: 'А теперь давайте добавим несколько акций в наш портфель.',
      gameCard: tutor4,
      multipliers: {}),
  GameEvent(
      id: 10,
      eventText: 'А теперь давайте добавим несколько акций в наш портфель.',
      gameCard: tutor4,
      multipliers: {}),
  GameEvent(
      id: 10,
      eventText: 'А теперь давайте добавим несколько акций в наш портфель.',
      gameCard: tutor4,
      multipliers: {}),
];

const Impact zeroImpact = Impact(moneyImpact: 0, riskImpact: 0);
const firstCard = GameCard(
    image: '1',
    text: 'Обучение',
    sell: zeroImpact,
    hold: zeroImpact,
    buy: zeroImpact,
    isTutorial: true);
const secondTutor = GameCard(
    image: '3',
    text: 'Обучение',
    sell: zeroImpact,
    hold: zeroImpact,
    buy: zeroImpact,
    isTutorial: true);

const tutor4 = GameCard(
    image: '4',
    text: 'Обучение',
    sell: zeroImpact,
    hold: zeroImpact,
    buy: zeroImpact,
    isTutorial: true);
List<GameEvent> initialCards = [
  GameEvent(
      id: 0,
      eventText:
          'Механика этой игры проста. Я буду предлагать вам активы, смахивайте вправо те, что вам подходят (которые вы готовы купить), а прочие влево.',
      gameCard: firstCard,
      multipliers: {}),
  GameEvent(
      id: 1,
      eventText:
          'Самые безопасные активы - это Облигации Федерального Займа. Облигация - это займ, который вы даёте компани или государству. Гарантом выплаты ОФЗ является государство.',
      gameCard: firstCard,
      multipliers: {}),
  GameEvent(
      id: 2,
      eventText:
          'Облигации имеют срок погашения и купоны, которые выплачиваются в качестве процентов по займу.\n\nА теперь попробуйте купить ОФЗ.',
      gameCard: secondTutor,
      multipliers: {}),
];

List<String> resultsOfQuestionare = [];
