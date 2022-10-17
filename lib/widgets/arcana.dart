import 'package:flutter/material.dart';

enum Arcana {
  Major,
  Minor,
}

enum Suits {
  Pentacles,
  Wands,
  Swords,
  Cups,
}

class CardInfo {
  final String name;
  final Arcana arcana;
  final int number;
  final Suits suit;
  final String uprightDescription;
  final String reverseDescription;
  final AssetImage image;

  CardInfo({
    @required this.name,
    @required this.arcana,
    @required this.number,
    this.suit,
    this.uprightDescription,
    this.reverseDescription,
    this.image,
  });
}

class TarotArcana {
  TarotArcana();

  List<CardInfo> getMajorArcana() {
    return [
      theFool,
      theMagician,
      theHighPriestess,
      theEmpress,
      theEmperor,
      theHierophant,
      theLovers,
      theChariot,
      strength,
      theHermit,
      wheelOfFortune,
      justice,
      theHangedMan,
      death,
      temperance,
      theDevil,
      theTower,
      theStar,
      theMoon,
      theSun,
      judgement,
      theWorld,
    ];
  }

  List<CardInfo> getAll() {
    return [
      theFool,
      theMagician,
      theHighPriestess,
      theEmpress,
      theEmperor,
      theHierophant,
      theLovers,
      theChariot,
      strength,
      theHermit,
      wheelOfFortune,
      justice,
      theHangedMan,
      death,
      temperance,
      theDevil,
      theTower,
      theStar,
      theMoon,
      theSun,
      judgement,
      theWorld,
      aceOfPentacles,
      twoOfPentacles,
      threeOfPentacles,
      fourOfPentacles,
      fiveOfPentacles,
      sixOfPentacles,
      sevenOfPentacles,
      eightOfPentacles,
      nineOfPentacles,
      tenOfPentacles,
      pageOfPentacles,
      knightOfPentacles,
      queenOfPentacles,
      kingOfPentacles,
      aceOfCups,
      twoOfCups,
      threeOfCups,
      fourOfCups,
      fiveOfCups,
      sixOfCups,
      sevenOfCups,
      eightOfCups,
      nineOfCups,
      tenOfCups,
      pageOfCups,
      knightOfCups,
      queenOfCups,
      kingOfCups,
      aceOfWands,
      twoOfWands,
      threeOfWands,
      fourOfWands,
      fiveOfWands,
      sixOfWands,
      sevenOfWands,
      eightOfWands,
      nineOfWands,
      tenOfWands,
      pageOfWands,
      knightOfWands,
      queenOfWands,
      kingOfWands,
      aceOfSwords,
      twoOfSwords,
      threeOfSwords,
      fourOfSwords,
      fiveOfSwords,
      sixOfSwords,
      sevenOfSwords,
      eightOfSwords,
      nineOfSwords,
      tenOfSwords,
      pageOfSwords,
      knightOfSwords,
      queenOfSwords,
      kingOfSwords,
    ];
  }

  // Major Arcana
  static final theFool = CardInfo(
    name: 'The Fool',
    arcana: Arcana.Major,
    number: 0,
    uprightDescription:
        'Folly, mania, extravagance, intoxication, delirium, frenzy, bewrayment.',
    reverseDescription:
        'Negligence, absence, distribution, carelessness, apathy, nullity, vanity.',
    image: AssetImage('assets/images/major/the_fool.png'),
  );

  static final theMagician = CardInfo(
    name: 'The Magician',
    arcana: Arcana.Major,
    number: 1,
    uprightDescription:
        'Skill, diplomacy, address, subtlety; sickness, pain, loss, disaster, snares of enemies; self-confidence, will; the Querent, if male.',
    reverseDescription: 'Physician, Magus, mental disease, disgrace, disquiet.',
    image: AssetImage('assets/images/major/the_magician.png'),
  );

  static final theHighPriestess = CardInfo(
    name: 'The High Priestess',
    arcana: Arcana.Major,
    number: 2,
    uprightDescription:
        'Secrets, mystery, the future as yet unrevealed; the woman who interests the Querent, if male; the Querent herself, if female; silence, tenacity; mystery, wisdom, science.',
    reverseDescription:
        'Passion, moral or physical ardor, conceit, surface knowledge.',
    image: AssetImage('assets/images/major/the_high_priestess.png'),
  );

  static final theEmpress = CardInfo(
    name: 'The Empress',
    arcana: Arcana.Major,
    number: 3,
    uprightDescription:
        'Fruitfulness, action, initiative, length of days; the unknown, clandestine; also difficulty, doubt, ignorance.',
    reverseDescription:
        'Light, truth, the unravelling of involved matters, public rejoicings; according to another reading, vacillation.',
    image: AssetImage('assets/images/major/the_empress.png'),
  );

  static final theEmperor = CardInfo(
    name: 'The Emperor',
    arcana: Arcana.Major,
    number: 4,
    uprightDescription:
        'Stability, power, protection, realization; a great person; aid, reason, conviction; also authority and will.',
    reverseDescription:
        'Benevolence, compassion, credit; also confusion to enemies, obstruction, immaturity.',
    image: AssetImage('assets/images/major/the_emperor.png'),
  );

  static final theHierophant = CardInfo(
    name: 'The Hierophant',
    arcana: Arcana.Major,
    number: 5,
    uprightDescription:
        'Marriage, alliance, captivity, servitude; by another account, mercy and goodness; inspiration; the man to whom the Querent has recourse.',
    reverseDescription:
        'Society, good understanding, concord, over-kindness, weakness.',
    image: AssetImage('assets/images/major/the_hierophant.png'),
  );

  static final theLovers = CardInfo(
    name: 'The Lovers',
    arcana: Arcana.Major,
    number: 6,
    uprightDescription: 'Attraction, love, beauty, trials overcome.',
    reverseDescription:
        'Failure, foolish designs. Another account speaks of marriage frustrated and contrarieties of all kinds.',
    image: AssetImage('assets/images/major/the_lovers.png'),
  );

  static final theChariot = CardInfo(
    name: 'The Chariot',
    arcana: Arcana.Major,
    number: 7,
    uprightDescription:
        'Succor, providence; also war, triumph, presumption, vengeance, trouble.',
    reverseDescription: 'Riot, quarrel, dispute, litigation, defeat.',
    image: AssetImage('assets/images/major/the_chariot.png'),
  );

  static final strength = CardInfo(
    name: 'Strength',
    arcana: Arcana.Major,
    number: 8,
    uprightDescription:
        'Power, energy, action, courage, magnanimity; also complete success and honors.',
    reverseDescription:
        'Despotism, abuse of power, weakness, discord, sometimes even disgrace.',
    image: AssetImage('assets/images/major/strength.png'),
  );

  static final theHermit = CardInfo(
    name: 'The Hermit',
    arcana: Arcana.Major,
    number: 9,
    uprightDescription:
        'Prudence, circumspection; also and especially treason, dissimulation, roguery, corruption.',
    reverseDescription:
        'Concealment, disguise, policy, fear, unreasoned caution.',
    image: AssetImage('assets/images/major/the_hermit.png'),
  );

  static final wheelOfFortune = CardInfo(
    name: 'Wheel of Fortune',
    arcana: Arcana.Major,
    number: 10,
    uprightDescription: 'Destiny, fortune, success, elevation, luck, felicity.',
    reverseDescription: 'Reversed: Increase, abundance, superfluity.',
    image: AssetImage('assets/images/major/wheel_of_fortune.png'),
  );

  static final justice = CardInfo(
    name: 'Justice',
    arcana: Arcana.Major,
    number: 11,
    uprightDescription:
        'Equity, rightness, probity, executive; triumph of the deserving side in law.',
    reverseDescription:
        'Law in all its departments, legal complications, bigotry, bias, excessive severity.',
    image: AssetImage('assets/images/major/justice.png'),
  );

  static final theHangedMan = CardInfo(
    name: 'The Hanged Man',
    arcana: Arcana.Major,
    number: 12,
    uprightDescription:
        'Wisdom, circumspection, discernment, trials, sacrifice, intuition, divination, prophecy.',
    reverseDescription: 'Selfishness, the crowd, body politic.',
    image: AssetImage('assets/images/major/the_hanged_man.png'),
  );

  static final death = CardInfo(
    name: 'Death',
    arcana: Arcana.Major,
    number: 13,
    uprightDescription:
        'End, mortality, destruction, corruption; also, for a man, the loss of a benefactor; for a woman, many contrarieties; for a maid, failure of marriage projects.',
    reverseDescription:
        'Inertia, sleep, lethargy, petrifaction, somnambulism; hope destroyed.',
    image: AssetImage('assets/images/major/death.png'),
  );

  static final temperance = CardInfo(
    name: 'Temperance',
    arcana: Arcana.Major,
    number: 14,
    uprightDescription:
        'Economy, moderation, frugality, management, accommodation.',
    reverseDescription:
        'Things connected with churches, religions, sects, the priesthood, sometimes even the priest who will marry the Querent; also disunion, unfortunate combinations, competing interests.',
    image: AssetImage('assets/images/major/temperance.png'),
  );

  static final theDevil = CardInfo(
    name: 'The Devil',
    arcana: Arcana.Major,
    number: 15,
    uprightDescription:
        'Ravage, violence, vehemence, extraordinary efforts, force, fatality; that which is predestined but is not for this reason evil.',
    reverseDescription: 'Evil fatality, weakness, pettiness, blindness.',
    image: AssetImage('assets/images/major/the_devil.png'),
  );

  static final theTower = CardInfo(
    name: 'The Tower',
    arcana: Arcana.Major,
    number: 16,
    uprightDescription:
        'Misery, distress, indigence, adversity, calamity, disgrace, deception, ruin. It is a card in particular of unforeseen catastrophe.',
    reverseDescription:
        'According to one account, the same in a lesser degree; also oppression, imprisonment, tyranny.',
    image: AssetImage('assets/images/major/the_tower.png'),
  );

  static final theStar = CardInfo(
    name: 'The Star',
    arcana: Arcana.Major,
    number: 17,
    uprightDescription:
        'Loss, theft, privation, abandonment; another reading says—hope and bright prospects.',
    reverseDescription: 'Arrogance, haughtiness, impotence.',
    image: AssetImage('assets/images/major/the_star.png'),
  );

  static final theMoon = CardInfo(
    name: 'The Moon',
    arcana: Arcana.Major,
    number: 18,
    uprightDescription:
        'Hidden enemies, danger, calumny, darkness, terror, deception, occult forces, error.',
    reverseDescription:
        'Instability, inconstancy, silence, lesser degrees of deception and error.',
    image: AssetImage('assets/images/major/the_moon.png'),
  );

  static final theSun = CardInfo(
    name: 'The Sun',
    arcana: Arcana.Major,
    number: 19,
    uprightDescription: 'Material happiness, fortunate marriage, contentment.',
    reverseDescription:
        'Material happiness, fortunate marriage, contentment in a lesser sense.',
    image: AssetImage('assets/images/major/the_sun.png'),
  );

  static final judgement = CardInfo(
    name: 'Judgement',
    arcana: Arcana.Major,
    number: 20,
    uprightDescription:
        'Change of position, renewal, outcome. Another account specifies total loss through lawsuit.',
    reverseDescription:
        'Weakness, pusillanimity, simplicity; also deliberation, decision, sentence.',
    image: AssetImage('assets/images/major/judgement.png'),
  );

  static final theWorld = CardInfo(
    name: 'The World',
    arcana: Arcana.Major,
    number: 21,
    uprightDescription:
        'Assured success, recompense, voyage, route, emigration, flight, change of place.',
    reverseDescription: 'Inertia, fixity, stagnation, permanence.',
    image: AssetImage('assets/images/major/the_world.png'),
  );

  // Pentacles
  static final aceOfPentacles = CardInfo(
    name: 'Ace of Pentacles',
    arcana: Arcana.Minor,
    number: 1,
    suit: Suits.Pentacles,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/pentacles.png',
    ),
  );

  static final twoOfPentacles = CardInfo(
    name: 'Two of Pentacles',
    arcana: Arcana.Minor,
    number: 2,
    suit: Suits.Pentacles,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/pentacles.png',
    ),
  );

  static final threeOfPentacles = CardInfo(
    name: 'Three of Pentacles',
    arcana: Arcana.Minor,
    number: 3,
    suit: Suits.Pentacles,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/pentacles.png',
    ),
  );

  static final fourOfPentacles = CardInfo(
    name: 'Four of Pentacles',
    arcana: Arcana.Minor,
    number: 4,
    suit: Suits.Pentacles,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/pentacles.png',
    ),
  );

  static final fiveOfPentacles = CardInfo(
    name: 'Five of Pentacles',
    arcana: Arcana.Minor,
    number: 5,
    suit: Suits.Pentacles,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/pentacles.png',
    ),
  );

  static final sixOfPentacles = CardInfo(
    name: 'Six of Pentacles',
    arcana: Arcana.Minor,
    number: 6,
    suit: Suits.Pentacles,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/pentacles.png',
    ),
  );

  static final sevenOfPentacles = CardInfo(
    name: 'Seven of Pentacles',
    arcana: Arcana.Minor,
    number: 7,
    suit: Suits.Pentacles,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/pentacles.png',
    ),
  );

  static final eightOfPentacles = CardInfo(
    name: 'Eight of Pentacles',
    arcana: Arcana.Minor,
    number: 8,
    suit: Suits.Pentacles,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/pentacles.png',
    ),
  );

  static final nineOfPentacles = CardInfo(
    name: 'Nine of Pentacles',
    arcana: Arcana.Minor,
    number: 9,
    suit: Suits.Pentacles,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/pentacles.png',
    ),
  );

  static final tenOfPentacles = CardInfo(
    name: 'Ten of Pentacles',
    arcana: Arcana.Minor,
    number: 10,
    suit: Suits.Pentacles,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/pentacles.png',
    ),
  );

  static final pageOfPentacles = CardInfo(
    name: 'Page of Pentacles',
    arcana: Arcana.Minor,
    number: 11,
    suit: Suits.Pentacles,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/pentacles.png',
    ),
  );

  static final knightOfPentacles = CardInfo(
    name: 'Knight of Pentacles',
    arcana: Arcana.Minor,
    number: 12,
    suit: Suits.Pentacles,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/pentacles.png',
    ),
  );

  static final queenOfPentacles = CardInfo(
    name: 'Queen of Pentacles',
    arcana: Arcana.Minor,
    number: 13,
    suit: Suits.Pentacles,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/pentacles.png',
    ),
  );

  static final kingOfPentacles = CardInfo(
    name: 'King of Pentacles',
    arcana: Arcana.Minor,
    number: 14,
    suit: Suits.Pentacles,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/pentacles.png',
    ),
  );

  // Cups
  static final aceOfCups = CardInfo(
    name: 'Ace of Cups',
    arcana: Arcana.Minor,
    number: 1,
    suit: Suits.Cups,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/cups.png',
    ),
  );

  static final twoOfCups = CardInfo(
    name: 'Two of Cups',
    arcana: Arcana.Minor,
    number: 2,
    suit: Suits.Cups,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/cups.png',
    ),
  );

  static final threeOfCups = CardInfo(
    name: 'Three of Cups',
    arcana: Arcana.Minor,
    number: 3,
    suit: Suits.Cups,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/cups.png',
    ),
  );

  static final fourOfCups = CardInfo(
    name: 'Four of Cups',
    arcana: Arcana.Minor,
    number: 4,
    suit: Suits.Cups,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/cups.png',
    ),
  );

  static final fiveOfCups = CardInfo(
    name: 'Five of Cups',
    arcana: Arcana.Minor,
    number: 5,
    suit: Suits.Cups,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/cups.png',
    ),
  );

  static final sixOfCups = CardInfo(
    name: 'Six of Cups',
    arcana: Arcana.Minor,
    number: 6,
    suit: Suits.Cups,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/cups.png',
    ),
  );

  static final sevenOfCups = CardInfo(
    name: 'Seven of Cups',
    arcana: Arcana.Minor,
    number: 7,
    suit: Suits.Cups,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/cups.png',
    ),
  );

  static final eightOfCups = CardInfo(
    name: 'Eight of Cups',
    arcana: Arcana.Minor,
    number: 8,
    suit: Suits.Cups,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/cups.png',
    ),
  );

  static final nineOfCups = CardInfo(
    name: 'Nine of Cups',
    arcana: Arcana.Minor,
    number: 9,
    suit: Suits.Cups,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/cups.png',
    ),
  );

  static final tenOfCups = CardInfo(
    name: 'Ten of Cups',
    arcana: Arcana.Minor,
    number: 10,
    suit: Suits.Cups,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/cups.png',
    ),
  );

  static final pageOfCups = CardInfo(
    name: 'Page of Cups',
    arcana: Arcana.Minor,
    number: 11,
    suit: Suits.Cups,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/cups.png',
    ),
  );

  static final knightOfCups = CardInfo(
    name: 'Knight of Cups',
    arcana: Arcana.Minor,
    number: 12,
    suit: Suits.Cups,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/cups.png',
    ),
  );

  static final queenOfCups = CardInfo(
    name: 'Queen of Cups',
    arcana: Arcana.Minor,
    number: 13,
    suit: Suits.Cups,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/cups.png',
    ),
  );

  static final kingOfCups = CardInfo(
    name: 'King of Cups',
    arcana: Arcana.Minor,
    number: 14,
    suit: Suits.Cups,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/cups.png',
    ),
  );

  // Wands
  static final aceOfWands = CardInfo(
    name: 'Ace of Wands',
    arcana: Arcana.Minor,
    number: 1,
    suit: Suits.Wands,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/wands.png',
    ),
  );

  static final twoOfWands = CardInfo(
    name: 'Two of Wands',
    arcana: Arcana.Minor,
    number: 2,
    suit: Suits.Wands,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/wands.png',
    ),
  );

  static final threeOfWands = CardInfo(
    name: 'Three of Wands',
    arcana: Arcana.Minor,
    number: 3,
    suit: Suits.Wands,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/wands.png',
    ),
  );

  static final fourOfWands = CardInfo(
    name: 'Four of Wands',
    arcana: Arcana.Minor,
    number: 4,
    suit: Suits.Wands,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/wands.png',
    ),
  );

  static final fiveOfWands = CardInfo(
    name: 'Five of Wands',
    arcana: Arcana.Minor,
    number: 5,
    suit: Suits.Wands,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/wands.png',
    ),
  );

  static final sixOfWands = CardInfo(
    name: 'Six of Wands',
    arcana: Arcana.Minor,
    number: 6,
    suit: Suits.Wands,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/wands.png',
    ),
  );

  static final sevenOfWands = CardInfo(
    name: 'Seven of Wands',
    arcana: Arcana.Minor,
    number: 7,
    suit: Suits.Wands,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/wands.png',
    ),
  );

  static final eightOfWands = CardInfo(
    name: 'Eight of Wands',
    arcana: Arcana.Minor,
    number: 8,
    suit: Suits.Wands,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/wands.png',
    ),
  );

  static final nineOfWands = CardInfo(
    name: 'Nine of Wands',
    arcana: Arcana.Minor,
    number: 9,
    suit: Suits.Wands,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/wands.png',
    ),
  );

  static final tenOfWands = CardInfo(
    name: 'Ten of Wands',
    arcana: Arcana.Minor,
    number: 10,
    suit: Suits.Wands,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/wands.png',
    ),
  );

  static final pageOfWands = CardInfo(
    name: 'Page of Wands',
    arcana: Arcana.Minor,
    number: 11,
    suit: Suits.Wands,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/wands.png',
    ),
  );

  static final knightOfWands = CardInfo(
    name: 'Knight of Wands',
    arcana: Arcana.Minor,
    number: 12,
    suit: Suits.Wands,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/wands.png',
    ),
  );

  static final queenOfWands = CardInfo(
    name: 'Queen of Wands',
    arcana: Arcana.Minor,
    number: 13,
    suit: Suits.Wands,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/wands.png',
    ),
  );

  static final kingOfWands = CardInfo(
    name: 'King of Wands',
    arcana: Arcana.Minor,
    number: 14,
    suit: Suits.Wands,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/wands.png',
    ),
  );

  // Swords
  static final aceOfSwords = CardInfo(
    name: 'Ace of Swords',
    arcana: Arcana.Minor,
    number: 1,
    suit: Suits.Swords,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/swords.png',
    ),
  );

  static final twoOfSwords = CardInfo(
    name: 'Two of Swords',
    arcana: Arcana.Minor,
    number: 2,
    suit: Suits.Swords,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/swords.png',
    ),
  );

  static final threeOfSwords = CardInfo(
    name: 'Three of Swords',
    arcana: Arcana.Minor,
    number: 3,
    suit: Suits.Swords,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/swords.png',
    ),
  );

  static final fourOfSwords = CardInfo(
    name: 'Four of Swords',
    arcana: Arcana.Minor,
    number: 4,
    suit: Suits.Swords,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/swords.png',
    ),
  );

  static final fiveOfSwords = CardInfo(
    name: 'Five of Swords',
    arcana: Arcana.Minor,
    number: 5,
    suit: Suits.Swords,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/swords.png',
    ),
  );

  static final sixOfSwords = CardInfo(
    name: 'Six of Swords',
    arcana: Arcana.Minor,
    number: 6,
    suit: Suits.Swords,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/swords.png',
    ),
  );

  static final sevenOfSwords = CardInfo(
    name: 'Seven of Swords',
    arcana: Arcana.Minor,
    number: 7,
    suit: Suits.Swords,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/swords.png',
    ),
  );

  static final eightOfSwords = CardInfo(
    name: 'Eight of Swords',
    arcana: Arcana.Minor,
    number: 8,
    suit: Suits.Swords,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/swords.png',
    ),
  );

  static final nineOfSwords = CardInfo(
    name: 'Nine of Swords',
    arcana: Arcana.Minor,
    number: 9,
    suit: Suits.Swords,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/swords.png',
    ),
  );

  static final tenOfSwords = CardInfo(
    name: 'Ten of Swords',
    arcana: Arcana.Minor,
    number: 10,
    suit: Suits.Swords,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/swords.png',
    ),
  );

  static final pageOfSwords = CardInfo(
    name: 'Page of Swords',
    arcana: Arcana.Minor,
    number: 11,
    suit: Suits.Swords,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/swords.png',
    ),
  );

  static final knightOfSwords = CardInfo(
    name: 'Knight of Swords',
    arcana: Arcana.Minor,
    number: 12,
    suit: Suits.Swords,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/swords.png',
    ),
  );

  static final queenOfSwords = CardInfo(
    name: 'Queen of Swords',
    arcana: Arcana.Minor,
    number: 13,
    suit: Suits.Swords,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/swords.png',
    ),
  );

  static final kingOfSwords = CardInfo(
    name: 'King of Swords',
    arcana: Arcana.Minor,
    number: 14,
    suit: Suits.Swords,
    uprightDescription: '',
    reverseDescription: '',
    image: AssetImage(
      'assets/images/minor/swords.png',
    ),
  );
}
