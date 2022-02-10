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
  // Prevent instantiation / updates
  // TarotArcana._();
  TarotArcana();

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
    image: AssetImage('images/major/the_fool.jpg'),
  );

  static final theMagician = CardInfo(
    name: 'The Magician',
    arcana: Arcana.Major,
    number: 1,
    uprightDescription:
        'On the broad level, the Magician is interpreted with energy, potential, and the manifestation of one\'s desires; the card symbolizes the meetings of the physical and spiritual worlds ("as above, so below") and the conduit converting spiritual energy into real-world action.',
    reverseDescription:
        'The reversed Magician can also be interpreted as related to black magick and to madness or mental distress.',
    image: AssetImage('images/major/the_magician.jpg'),
  );

  static final theHighPriestess = CardInfo(
    name: 'The High Priestess',
    arcana: Arcana.Major,
    number: 2,
    uprightDescription:
        'Secrets, mystery, the future as yet unrevealed; the woman who interests the Querent, if male; the Querent herself, if female; silence, tenacity; mystery, wisdom, science.',
    reverseDescription:
        'Reversed: Passion, moral or physical ardor, conceit, surface knowledge.',
    image: AssetImage('images/major/the_high_priestess.jpg'),
  );

  static final theEmpress = CardInfo(
    name: 'The Empress',
    arcana: Arcana.Major,
    number: 3,
    uprightDescription:
        'Fruitfulness, action, initiative, length of days; the unknown, clandestine; also difficulty, doubt, ignorance.',
    reverseDescription:
        'Light, truth, the unraveling of involved matters, public rejoicings; according to another reading, vacillation.',
    image: AssetImage('images/major/the_empress.jpg'),
  );

  static final theEmperor = CardInfo(
    name: 'The Emperor',
    arcana: Arcana.Major,
    number: 4,
    uprightDescription:
        'Stability, power, protection, realization; a great person; aid, reason, conviction also authority and will.',
    reverseDescription:
        'Benevolence, compassion, credit; also confusion to enemies, obstruction, immaturity.',
    image: AssetImage('images/major/the_emperor.jpg'),
  );

  static final theHierophant = CardInfo(
    name: 'The Hierophant',
    arcana: Arcana.Major,
    number: 5,
    uprightDescription:
        'Marriage, alliance, captivity, servitude; by another account, mercy, and goodness; inspiration; the man to whom the Querent has recourse.',
    reverseDescription:
        'Society, good understanding, concord, over kindness, weakness.',
    image: AssetImage('images/major/the_hierophant.jpg'),
  );

  static final theLovers = CardInfo(
    name: 'The Lovers',
    arcana: Arcana.Major,
    number: 6,
    uprightDescription: 'Attraction, love, beauty, trials overcome.',
    reverseDescription:
        'Failure, foolish designs. Another account speaks of marriage frustrated and contrarieties of all kinds.',
    image: AssetImage('images/major/the_lovers.jpg'),
  );

  static final theChariot = CardInfo(
    name: 'The Chariot',
    arcana: Arcana.Major,
    number: 7,
    uprightDescription:
        'Succour, providence; also war, triumph, presumption, vengeance, trouble.',
    reverseDescription: 'Riot, quarrel, dispute, litigation, defeat.',
    image: AssetImage('images/major/the_chariot.jpg'),
  );

  static final strength = CardInfo(
    name: 'Strength',
    arcana: Arcana.Major,
    number: 8,
    uprightDescription:
        'Power, energy, action, courage, magnanimity; also complete success and honours.',
    reverseDescription:
        'Despotism, abuse of power, weakness, discord, sometimes even disgrace.',
    image: AssetImage('images/major/strength.jpg'),
  );

  static final theHermit = CardInfo(
    name: 'The Hermit',
    arcana: Arcana.Major,
    number: 9,
    uprightDescription:
        'Prudence, circumspection; also and especially treason, dissimulation, roguery, corruption.',
    reverseDescription:
        'Concealment, disguise, policy fear, unreasoned caution.',
    image: AssetImage('images/major/the_hermit.jpg'),
  );

  static final wheelOfFortune = CardInfo(
    name: 'Wheel of Fortune',
    arcana: Arcana.Major,
    number: 10,
    uprightDescription: 'Destiny, fortune, success, elevation, luck, felicity.',
    reverseDescription: 'Increase, abundance, superfluity.',
    image: AssetImage('images/major/wheel_of_fortune.jpg'),
  );

  static final justice = CardInfo(
    name: 'Justice',
    arcana: Arcana.Major,
    number: 11,
    uprightDescription:
        'Equity, rightness, probity, executive; triumph of the deserving side in law.',
    reverseDescription:
        'Law in all its departments, legal complications, bigotry, bias, excessive severity.',
    image: AssetImage('images/major/justice.jpg'),
  );

  static final theHangedMan = CardInfo(
    name: 'The Hanged Man',
    arcana: Arcana.Major,
    number: 12,
    uprightDescription:
        'Wisdom, circumspection, discernment, trials, sacrifice, intuition, divination, prophecy.',
    reverseDescription: 'Selfishness, the crowd, body politic.',
    image: AssetImage('images/major/the_hanged_man.jpg'),
  );

  static final death = CardInfo(
    name: 'Death',
    arcana: Arcana.Major,
    number: 13,
    uprightDescription:
        'End, mortality, destruction, corruption; also, for a man, the loss of a benefactor; for a woman, many contrarieties; for a maid, failure of marriage projects.',
    reverseDescription:
        'Inertia, sleep, lethargy, petrifaction, somnambulism; hope.',
    image: AssetImage('images/major/death.jpg'),
  );

  static final temperance = CardInfo(
    name: 'Temperance',
    arcana: Arcana.Major,
    number: 14,
    uprightDescription:
        'Economy, moderation, frugality, management, accommodation.',
    reverseDescription:
        'Things connected with churches, religions, sects, the priesthood, sometimes even the priest who will marry Querent; also disunion, unfortunate combinations, competing interests.',
    image: AssetImage('images/major/temperance.jpg'),
  );

  static final theDevil = CardInfo(
    name: 'The Devil',
    arcana: Arcana.Major,
    number: 15,
    uprightDescription:
        'Ravage, violence, vehemence, extraordinary efforts, force, fatality; that which is predestined but is not for this reason evil.',
    reverseDescription: 'Evil fatality, weakness, pettiness, blindness.',
    image: AssetImage('images/major/the_devil.jpg'),
  );

  static final theTower = CardInfo(
    name: 'The Tower',
    arcana: Arcana.Major,
    number: 16,
    uprightDescription:
        'Misery, distress, indigence, adversity, calamity, disgrace, deception, ruin. It is a card in particular of unforeseen catastrophe.',
    reverseDescription:
        'Negligence, absence, distribution, carelessness, distraction, apathy, nullity, vanity.',
    image: AssetImage('images/major/the_tower.jpg'),
  );

  static final theStar = CardInfo(
    name: 'The Star',
    arcana: Arcana.Major,
    number: 17,
    uprightDescription: 'Hope and bright prospects.',
    reverseDescription:
        'Loss, theft, privation, abandonment; another reading says: arrogance, haughtiness, impotence.',
    image: AssetImage('images/major/the_star.jpg'),
  );

  static final theMoon = CardInfo(
    name: 'The Moon',
    arcana: Arcana.Major,
    number: 18,
    uprightDescription:
        'Hidden enemies, danger, calumny, darkness, terror, deception, occult forces, error.',
    reverseDescription:
        'Instability, inconstancy, silence, lesser degrees of deception and error.',
    image: AssetImage('images/major/the_moon.jpg'),
  );

  static final theSun = CardInfo(
    name: 'The Sun',
    arcana: Arcana.Major,
    number: 19,
    uprightDescription: 'Material happiness, fortunate marriage, contentment.',
    reverseDescription:
        'Material happiness, fortunate marriage, contentment. Reversed: The same in a lesser sense.',
    image: AssetImage('images/major/the_sun.jpg'),
  );

  static final judgement = CardInfo(
    name: 'Judgement',
    arcana: Arcana.Major,
    number: 20,
    uprightDescription:
        'The Judgement card appearing in a reading signifies that you are coming close to this significant point in your life where you must start to evaluate yourself.',
    reverseDescription:
        'Poor logic, self-doubt, poor or hasty judgement, stagnation.',
    image: AssetImage('images/major/judgement.png'),
  );

  static final theWorld = CardInfo(
    name: 'The World',
    arcana: Arcana.Major,
    number: 21,
    uprightDescription:
        'Assured success, recompense, voyage, route, emigration, flight, change of place.',
    reverseDescription: 'Inertia, fixity, stagnation, permanence.',
    image: AssetImage('images/major/the_world.jpg'),
  );

  // Pentacles
  static final aceOfPentacles = CardInfo(
    name: 'Ace of Pentacles',
    arcana: Arcana.Minor,
    number: 1,
    suit: Suits.Pentacles,
    uprightDescription:
        'A new financial or career opportunity, manifestation, abundance.',
    reverseDescription: 'Lost opportunity, lack of planning and foresight.',
    image: AssetImage(
      'images/minor/pentacles.jpeg',
    ),
  );

  static final twoOfPentacles = CardInfo(
    name: 'Two of Pentacles',
    arcana: Arcana.Minor,
    number: 2,
    suit: Suits.Pentacles,
    uprightDescription:
        'The Two of Pentacles is a card when upright means to juggle, to struggle in a positive influence, to balance, to maintain.',
    reverseDescription:
        'The Reversed card indicates imbalances, excess juggling, excess struggle, the advice of the card is to re-dress balance.',
    image: AssetImage(
      'images/minor/pentacles.jpeg',
    ),
  );

  static final threeOfPentacles = CardInfo(
    name: 'Three of Pentacles',
    arcana: Arcana.Minor,
    number: 3,
    suit: Suits.Pentacles,
    uprightDescription:
        'Mastery of a skill in trade or work; achieving perfection; artistic ability; and dignity through renown rank or power.',
    reverseDescription:
        'Negative attributes (when card is in reverse) include sloppiness resulting in a lower quality outcome; lack of skill; banal ideas; and preoccupation with off task concerns.',
    image: AssetImage(
      'images/minor/pentacles.jpeg',
    ),
  );

  static final fourOfPentacles = CardInfo(
    name: 'Four of Pentacles',
    arcana: Arcana.Minor,
    number: 4,
    suit: Suits.Pentacles,
    uprightDescription:
        'A spread containing the Four of Pentacles refers to a lover of material wealth, one who hoards things of value with no prospect of sharing',
    reverseDescription:
        'In contrast, when the Four of Pentacles is in reverse it warns against the tendency of being a spendthrift.',
    image: AssetImage(
      'images/minor/pentacles.jpeg',
    ),
  );

  static final fiveOfPentacles = CardInfo(
    name: 'Five of Pentacles',
    arcana: Arcana.Minor,
    number: 5,
    suit: Suits.Pentacles,
    uprightDescription:
        'The Five of Pentacles is a card when upright means to lose all faith, losing resources, losing a lover (mostly shows up when you\'ve had a breakup), and losing security whether financially or emotionally (or both).',
    reverseDescription:
        'The Reversed meaning of the card is when hope returns slowly but surely, you can be positive from the troubles you\'ve recently experienced, mostly shows up when you are back into a relationship again that was once broken, a renewal of faith. The advice of the card is to see a glass as half full not half empty, to seek help when you need it and not fear rejection.',
    image: AssetImage(
      'images/minor/pentacles.jpeg',
    ),
  );

  static final sixOfPentacles = CardInfo(
    name: 'Six of Pentacles',
    arcana: Arcana.Minor,
    number: 6,
    suit: Suits.Pentacles,
    uprightDescription:
        'A merchant weighs money in a pair of scales and distributes it to the needy and distressed, signifying the redistribution of wealth and gratification.',
    reverseDescription:
        'Reversed, the card represents desire, cupidity, envy, jealousy and illusion.',
    image: AssetImage(
      'images/minor/pentacles.jpeg',
    ),
  );

  static final sevenOfPentacles = CardInfo(
    name: 'Seven of Pentacles',
    arcana: Arcana.Minor,
    number: 7,
    suit: Suits.Pentacles,
    uprightDescription:
        'The Seven of Coins, or The Seven of Pentacles is a card when upright means to show your commitment towards your work life or dreams, it may seem like charity work to you but it is on the value of receiving emotional and spiritual rewards, like the saying \'success is a journey not a destination\'.',
    reverseDescription:
        'The reversed meaning of the card means, excess energy and personal resources used that can cause a strain, the feeling of giving too much of your time and resources with little reward or assurance of moving forward. The advice of the card is to re-assess your commitment levels, if for too long you are not receiving the results you desire, it may be best to cut your losses especially when it seems to be a bad investment of your time and money.',
    image: AssetImage(
      'images/minor/pentacles.jpeg',
    ),
  );

  static final eightOfPentacles = CardInfo(
    name: 'Eight of Pentacles',
    arcana: Arcana.Minor,
    number: 8,
    suit: Suits.Pentacles,
    uprightDescription:
        'An artist in stone at his work, which he exhibits in the form of trophies. Divinatory Meanings: Work, employment, commission, craftsmanship, skill in craft and business, perhaps in the preparatory stage. Steady patience with achievement kept in mind.',
    reverseDescription:
        'Reversed: Voided ambition, vanity, cupidity, exaction, usury. It may also signify the possession of skill, in the sense of the ingenious mind turned to cunning and intrigue.',
    image: AssetImage(
      'images/minor/pentacles.jpeg',
    ),
  );

  static final nineOfPentacles = CardInfo(
    name: 'Nine of Pentacles',
    arcana: Arcana.Minor,
    number: 9,
    suit: Suits.Pentacles,
    uprightDescription:
        'The Nine of Coins, or the Nine of Pentacles is a card when upright means having the financial independence, having the self-reliance of personal pursuits, the ability to treat yourself with luxury, being on a stable financial plateau and steady security.',
    reverseDescription:
        'Reversed, the card means excess spending, being co-dependent on your financials or on others, to feel lonely in your personal pursuits, to feel inadequate financially, to have everything money can buy but yet still feeling impoverished emotionally and spiritually. The advice of the card is to look within the root of your existing problems, to look and focus on what will make you feel complete and secure, yet to learn and grow along the way.',
    image: AssetImage(
      'images/minor/pentacles.jpeg',
    ),
  );

  static final tenOfPentacles = CardInfo(
    name: 'Ten of Pentacles',
    arcana: Arcana.Minor,
    number: 10,
    suit: Suits.Pentacles,
    uprightDescription:
        'It is often associated with family matters, financial matters or a mix of the two.',
    reverseDescription: '???',
    image: AssetImage(
      'images/minor/pentacles.jpeg',
    ),
  );

  static final pageOfPentacles = CardInfo(
    name: 'Page of Pentacles',
    arcana: Arcana.Minor,
    number: 11,
    suit: Suits.Pentacles,
    uprightDescription:
        'Often used to represent a young person. Can mean a changing of your line of work and/or taking on more responsibility. But primarily, this is the card for students.',
    reverseDescription: '???',
    image: AssetImage(
      'images/minor/pentacles.jpeg',
    ),
  );

  static final knightOfPentacles = CardInfo(
    name: 'Knight of Pentacles',
    arcana: Arcana.Minor,
    number: 12,
    suit: Suits.Pentacles,
    uprightDescription:
        'A Knight is generally considered the appropriate card for a teenager or young adult, most often a teenaged boy or young man. Coins are considered the "darkest" of the suits in terms of choosing based on appearance and are meant to represent dark-skinned, dark-haired people. Using this method, a Knight of Coins would be used to represent a young man who is dark of complexion and features.',
    reverseDescription: '???',
    image: AssetImage(
      'images/minor/pentacles.jpeg',
    ),
  );

  static final queenOfPentacles = CardInfo(
    name: 'Queen of Pentacles',
    arcana: Arcana.Minor,
    number: 13,
    suit: Suits.Pentacles,
    uprightDescription:
        'The upright Queen of Pentacles signifies someone down-to-earth, who takes responsibility for many roles in the care for her family. Representing a mature female or feminine presence, the receiver of the upright Queen of Pentacles has central focus on childcare and wellbeing. However, the Queen of Pentacles should not be mistaken as only a homebody and housewife. She has the ability to execute effective business strategies under tight time constraints. The Queen of Pentacles works her magic in the background, as she remains quiet about her accomplishments. Lastly, she desires a simple and minimalist lifestyle--she loves to be calculated, careful and vigilant.',
    reverseDescription:
        'The reversed Queen of Pentacles can become unattached from reality, leaving her completely self-centered. Some of her traits include being selfish and jealous when others show greater success. For the card drawer, the Queen of Pentacles indicates misplaced priorities and distractions from long-term goals. This card also indicates that those in the beholders care are ready to be independent and responsible for their own lives. The beholder has reached a rewarding point where their loved ones are strong enough to make their own decisions. In order to return to her Upright state, the Queen of Pentacles needs to become grounded again.',
    image: AssetImage(
      'images/minor/pentacles.jpeg',
    ),
  );

  static final kingOfPentacles = CardInfo(
    name: 'King of Pentacles',
    arcana: Arcana.Minor,
    number: 14,
    suit: Suits.Pentacles,
    uprightDescription:
        'The King of Coins depicts a mature man of considerable earthly power, usually depicted as a diplomatic business-man with a lot of practical wisdom. The king of pentacles can be miserly at times. He has a taste for sensual delights and earthly gifts. Here is a man who has a social standing and is big on keeping up with the Joneses.',
    reverseDescription: '???',
    image: AssetImage(
      'images/minor/pentacles.jpeg',
    ),
  );

  // Cups
  static final aceOfCups = CardInfo(
    name: 'Ace of Cups',
    arcana: Arcana.Minor,
    number: 1,
    suit: Suits.Cups,
    uprightDescription:
        'This Ace requires the diviner to examine their life to see how creating love works there. This card often means that love is the essence of the situation, the heart of the matter. It may or may not be romantic love, and can depend on other cards around it.',
    reverseDescription: '???',
    image: AssetImage(
      'images/minor/cups.jpeg',
    ),
  );

  static final twoOfCups = CardInfo(
    name: 'Two of Cups',
    arcana: Arcana.Minor,
    number: 2,
    suit: Suits.Cups,
    uprightDescription:
        'Partnerships and unions are represented by the Two of Cups. Much like the Lovers card in the Major Arcana, energies come together to create a mutual bond. Beauty, power, and electric vibrations occur, bringing romance and sexual energy to the scene. Platonic relationships also benefit from the Two of Cups. This is the card that signifies reconciliation.',
    reverseDescription:
        'Reversed, this card indicates that pairing off to the exclusion of all other people and situations is happening. Take the time to bring balance into life by including other factors. Unhealthy relationships that consume all one\'s energy need to be examined, and a new course of action decided upon.',
    image: AssetImage(
      'images/minor/cups.jpeg',
    ),
  );

  static final threeOfCups = CardInfo(
    name: 'Three of Cups',
    arcana: Arcana.Minor,
    number: 3,
    suit: Suits.Cups,
    uprightDescription:
        'Mastery of a skill in trade or work; achieving perfection; artistic ability; and dignity through renown rank or power.',
    reverseDescription:
        'Negative attributes (when card is in reverse) include sloppiness resulting in a lower quality outcome; lack of skill; banal ideas; and preoccupation with off task concerns.',
    image: AssetImage(
      'images/minor/cups.jpeg',
    ),
  );

  static final fourOfCups = CardInfo(
    name: 'Four of Cups',
    arcana: Arcana.Minor,
    number: 4,
    suit: Suits.Cups,
    uprightDescription:
        'A spread containing the Four of Cups refers to a lover of material wealth, one who hoards things of value with no prospect of sharing',
    reverseDescription:
        'In contrast, when the Four of Cups is in reverse it warns against the tendency of being a spendthrift.',
    image: AssetImage(
      'images/minor/cups.jpeg',
    ),
  );

  static final fiveOfCups = CardInfo(
    name: 'Five of Cups',
    arcana: Arcana.Minor,
    number: 5,
    suit: Suits.Cups,
    uprightDescription:
        'The Five of Cups is a card when upright means to lose all faith, losing resources, losing a lover (mostly shows up when you\'ve had a breakup), and losing security whether financially or emotionally (or both).',
    reverseDescription:
        'The Reversed meaning of the card is when hope returns slowly but surely, you can be positive from the troubles you\'ve recently experienced, mostly shows up when you are back into a relationship again that was once broken, a renewal of faith. The advice of the card is to see a glass as half full not half empty, to seek help when you need it and not fear rejection.',
    image: AssetImage(
      'images/minor/cups.jpeg',
    ),
  );

  static final sixOfCups = CardInfo(
    name: 'Six of Cups',
    arcana: Arcana.Minor,
    number: 6,
    suit: Suits.Cups,
    uprightDescription:
        'A merchant weighs money in a pair of scales and distributes it to the needy and distressed, signifying the redistribution of wealth and gratification.',
    reverseDescription:
        'Reversed, the card represents desire, cupidity, envy, jealousy and illusion.',
    image: AssetImage(
      'images/minor/cups.jpeg',
    ),
  );

  static final sevenOfCups = CardInfo(
    name: 'Seven of Cups',
    arcana: Arcana.Minor,
    number: 7,
    suit: Suits.Cups,
    uprightDescription:
        'The Seven of Coins, or The Seven of Cups is a card when upright means to show your commitment towards your work life or dreams, it may seem like charity work to you but it is on the value of receiving emotional and spiritual rewards, like the saying \'success is a journey not a destination\'.',
    reverseDescription:
        'The reversed meaning of the card means, excess energy and personal resources used that can cause a strain, the feeling of giving too much of your time and resources with little reward or assurance of moving forward. The advice of the card is to re-assess your commitment levels, if for too long you are not receiving the results you desire, it may be best to cut your losses especially when it seems to be a bad investment of your time and money.',
    image: AssetImage(
      'images/minor/cups.jpeg',
    ),
  );

  static final eightOfCups = CardInfo(
    name: 'Eight of Cups',
    arcana: Arcana.Minor,
    number: 8,
    suit: Suits.Cups,
    uprightDescription:
        'An artist in stone at his work, which he exhibits in the form of trophies. Divinatory Meanings: Work, employment, commission, craftsmanship, skill in craft and business, perhaps in the preparatory stage. Steady patience with achievement kept in mind.',
    reverseDescription:
        'Reversed: Voided ambition, vanity, cupidity, exaction, usury. It may also signify the possession of skill, in the sense of the ingenious mind turned to cunning and intrigue.',
    image: AssetImage(
      'images/minor/cups.jpeg',
    ),
  );

  static final nineOfCups = CardInfo(
    name: 'Nine of Cups',
    arcana: Arcana.Minor,
    number: 9,
    suit: Suits.Cups,
    uprightDescription:
        'The Nine of Coins, or the Nine of Cups is a card when upright means having the financial independence, having the self-reliance of personal pursuits, the ability to treat yourself with luxury, being on a stable financial plateau and steady security.',
    reverseDescription:
        'Reversed, the card means excess spending, being co-dependent on your financials or on others, to feel lonely in your personal pursuits, to feel inadequate financially, to have everything money can buy but yet still feeling impoverished emotionally and spiritually. The advice of the card is to look within the root of your existing problems, to look and focus on what will make you feel complete and secure, yet to learn and grow along the way.',
    image: AssetImage(
      'images/minor/cups.jpeg',
    ),
  );

  static final tenOfCups = CardInfo(
    name: 'Ten of Cups',
    arcana: Arcana.Minor,
    number: 10,
    suit: Suits.Cups,
    uprightDescription:
        'It is often associated with family matters, financial matters or a mix of the two.',
    reverseDescription: '???',
    image: AssetImage(
      'images/minor/cups.jpeg',
    ),
  );

  static final pageOfCups = CardInfo(
    name: 'Page of Cups',
    arcana: Arcana.Minor,
    number: 11,
    suit: Suits.Cups,
    uprightDescription:
        'Often used to represent a young person. Can mean a changing of your line of work and/or taking on more responsibility. But primarily, this is the card for students.',
    reverseDescription: '???',
    image: AssetImage(
      'images/minor/cups.jpeg',
    ),
  );

  static final knightOfCups = CardInfo(
    name: 'Knight of Cups',
    arcana: Arcana.Minor,
    number: 12,
    suit: Suits.Cups,
    uprightDescription:
        'A Knight is generally considered the appropriate card for a teenager or young adult, most often a teenaged boy or young man. Coins are considered the "darkest" of the suits in terms of choosing based on appearance and are meant to represent dark-skinned, dark-haired people. Using this method, a Knight of Coins would be used to represent a young man who is dark of complexion and features.',
    reverseDescription: '???',
    image: AssetImage(
      'images/minor/cups.jpeg',
    ),
  );

  static final queenOfCups = CardInfo(
    name: 'Queen of Cups',
    arcana: Arcana.Minor,
    number: 13,
    suit: Suits.Cups,
    uprightDescription:
        'The upright Queen of Cups signifies someone down-to-earth, who takes responsibility for many roles in the care for her family. Representing a mature female or feminine presence, the receiver of the upright Queen of Cups has central focus on childcare and wellbeing. However, the Queen of Cups should not be mistaken as only a homebody and housewife. She has the ability to execute effective business strategies under tight time constraints. The Queen of Cups works her magic in the background, as she remains quiet about her accomplishments. Lastly, she desires a simple and minimalist lifestyle--she loves to be calculated, careful and vigilant.',
    reverseDescription:
        'The reversed Queen of Cups can become unattached from reality, leaving her completely self-centered. Some of her traits include being selfish and jealous when others show greater success. For the card drawer, the Queen of Cups indicates misplaced priorities and distractions from long-term goals. This card also indicates that those in the beholders care are ready to be independent and responsible for their own lives. The beholder has reached a rewarding point where their loved ones are strong enough to make their own decisions. In order to return to her Upright state, the Queen of Cups needs to become grounded again.',
    image: AssetImage(
      'images/minor/cups.jpeg',
    ),
  );

  static final kingOfCups = CardInfo(
    name: 'King of Cups',
    arcana: Arcana.Minor,
    number: 14,
    suit: Suits.Cups,
    uprightDescription:
        'The King of Coins depicts a mature man of considerable earthly power, usually depicted as a diplomatic business-man with a lot of practical wisdom. The king of pentacles can be miserly at times. He has a taste for sensual delights and earthly gifts. Here is a man who has a social standing and is big on keeping up with the Joneses.',
    reverseDescription: '???',
    image: AssetImage(
      'images/minor/cups.jpeg',
    ),
  );

  // Wands
  static final aceOfWands = CardInfo(
    name: 'Ace of Wands',
    arcana: Arcana.Minor,
    number: 1,
    suit: Suits.Wands,
    uprightDescription:
        'A new financial or career opportunity, manifestation, abundance.',
    reverseDescription: 'Lost opportunity, lack of planning and foresight.',
    image: AssetImage(
      'images/minor/wands.jpeg',
    ),
  );

  static final twoOfWands = CardInfo(
    name: 'Two of Wands',
    arcana: Arcana.Minor,
    number: 2,
    suit: Suits.Wands,
    uprightDescription:
        'The Two of Wands is a card when upright means to juggle, to struggle in a positive influence, to balance, to maintain.',
    reverseDescription:
        'The Reversed card indicates imbalances, excess juggling, excess struggle, the advice of the card is to re-dress balance.',
    image: AssetImage(
      'images/minor/wands.jpeg',
    ),
  );

  static final threeOfWands = CardInfo(
    name: 'Three of Wands',
    arcana: Arcana.Minor,
    number: 3,
    suit: Suits.Wands,
    uprightDescription:
        'Mastery of a skill in trade or work; achieving perfection; artistic ability; and dignity through renown rank or power.',
    reverseDescription:
        'Negative attributes (when card is in reverse) include sloppiness resulting in a lower quality outcome; lack of skill; banal ideas; and preoccupation with off task concerns.',
    image: AssetImage(
      'images/minor/wands.jpeg',
    ),
  );

  static final fourOfWands = CardInfo(
    name: 'Four of Wands',
    arcana: Arcana.Minor,
    number: 4,
    suit: Suits.Wands,
    uprightDescription:
        'A spread containing the Four of Wands refers to a lover of material wealth, one who hoards things of value with no prospect of sharing',
    reverseDescription:
        'In contrast, when the Four of Wands is in reverse it warns against the tendency of being a spendthrift.',
    image: AssetImage(
      'images/minor/wands.jpeg',
    ),
  );

  static final fiveOfWands = CardInfo(
    name: 'Five of Wands',
    arcana: Arcana.Minor,
    number: 5,
    suit: Suits.Wands,
    uprightDescription:
        'The Five of Wands is a card when upright means to lose all faith, losing resources, losing a lover (mostly shows up when you\'ve had a breakup), and losing security whether financially or emotionally (or both).',
    reverseDescription:
        'The Reversed meaning of the card is when hope returns slowly but surely, you can be positive from the troubles you\'ve recently experienced, mostly shows up when you are back into a relationship again that was once broken, a renewal of faith. The advice of the card is to see a glass as half full not half empty, to seek help when you need it and not fear rejection.',
    image: AssetImage(
      'images/minor/wands.jpeg',
    ),
  );

  static final sixOfWands = CardInfo(
    name: 'Six of Wands',
    arcana: Arcana.Minor,
    number: 6,
    suit: Suits.Wands,
    uprightDescription:
        'A merchant weighs money in a pair of scales and distributes it to the needy and distressed, signifying the redistribution of wealth and gratification.',
    reverseDescription:
        'Reversed, the card represents desire, cupidity, envy, jealousy and illusion.',
    image: AssetImage(
      'images/minor/wands.jpeg',
    ),
  );

  static final sevenOfWands = CardInfo(
    name: 'Seven of Wands',
    arcana: Arcana.Minor,
    number: 7,
    suit: Suits.Wands,
    uprightDescription:
        'The Seven of Coins, or The Seven of Wands is a card when upright means to show your commitment towards your work life or dreams, it may seem like charity work to you but it is on the value of receiving emotional and spiritual rewards, like the saying \'success is a journey not a destination\'.',
    reverseDescription:
        'The reversed meaning of the card means, excess energy and personal resources used that can cause a strain, the feeling of giving too much of your time and resources with little reward or assurance of moving forward. The advice of the card is to re-assess your commitment levels, if for too long you are not receiving the results you desire, it may be best to cut your losses especially when it seems to be a bad investment of your time and money.',
    image: AssetImage(
      'images/minor/wands.jpeg',
    ),
  );

  static final eightOfWands = CardInfo(
    name: 'Eight of Wands',
    arcana: Arcana.Minor,
    number: 8,
    suit: Suits.Wands,
    uprightDescription:
        'An artist in stone at his work, which he exhibits in the form of trophies. Divinatory Meanings: Work, employment, commission, craftsmanship, skill in craft and business, perhaps in the preparatory stage. Steady patience with achievement kept in mind.',
    reverseDescription:
        'Reversed: Voided ambition, vanity, cupidity, exaction, usury. It may also signify the possession of skill, in the sense of the ingenious mind turned to cunning and intrigue.',
    image: AssetImage(
      'images/minor/wands.jpeg',
    ),
  );

  static final nineOfWands = CardInfo(
    name: 'Nine of Wands',
    arcana: Arcana.Minor,
    number: 9,
    suit: Suits.Wands,
    uprightDescription:
        'The Nine of Coins, or the Nine of Wands is a card when upright means having the financial independence, having the self-reliance of personal pursuits, the ability to treat yourself with luxury, being on a stable financial plateau and steady security.',
    reverseDescription:
        'Reversed, the card means excess spending, being co-dependent on your financials or on others, to feel lonely in your personal pursuits, to feel inadequate financially, to have everything money can buy but yet still feeling impoverished emotionally and spiritually. The advice of the card is to look within the root of your existing problems, to look and focus on what will make you feel complete and secure, yet to learn and grow along the way.',
    image: AssetImage(
      'images/minor/wands.jpeg',
    ),
  );

  static final tenOfWands = CardInfo(
    name: 'Ten of Wands',
    arcana: Arcana.Minor,
    number: 10,
    suit: Suits.Wands,
    uprightDescription:
        'It is often associated with family matters, financial matters or a mix of the two.',
    reverseDescription: '???',
    image: AssetImage(
      'images/minor/wands.jpeg',
    ),
  );

  static final pageOfWands = CardInfo(
    name: 'Page of Wands',
    arcana: Arcana.Minor,
    number: 11,
    suit: Suits.Wands,
    uprightDescription:
        'Often used to represent a young person. Can mean a changing of your line of work and/or taking on more responsibility. But primarily, this is the card for students.',
    reverseDescription: '???',
    image: AssetImage(
      'images/minor/wands.jpeg',
    ),
  );

  static final knightOfWands = CardInfo(
    name: 'Knight of Wands',
    arcana: Arcana.Minor,
    number: 12,
    suit: Suits.Wands,
    uprightDescription:
        'A Knight is generally considered the appropriate card for a teenager or young adult, most often a teenaged boy or young man. Coins are considered the "darkest" of the suits in terms of choosing based on appearance and are meant to represent dark-skinned, dark-haired people. Using this method, a Knight of Coins would be used to represent a young man who is dark of complexion and features.',
    reverseDescription: '???',
    image: AssetImage(
      'images/minor/wands.jpeg',
    ),
  );

  static final queenOfWands = CardInfo(
    name: 'Queen of Wands',
    arcana: Arcana.Minor,
    number: 13,
    suit: Suits.Wands,
    uprightDescription:
        'The upright Queen of Wands signifies someone down-to-earth, who takes responsibility for many roles in the care for her family. Representing a mature female or feminine presence, the receiver of the upright Queen of Wands has central focus on childcare and wellbeing. However, the Queen of Wands should not be mistaken as only a homebody and housewife. She has the ability to execute effective business strategies under tight time constraints. The Queen of Wands works her magic in the background, as she remains quiet about her accomplishments. Lastly, she desires a simple and minimalist lifestyle--she loves to be calculated, careful and vigilant.',
    reverseDescription:
        'The reversed Queen of Wands can become unattached from reality, leaving her completely self-centered. Some of her traits include being selfish and jealous when others show greater success. For the card drawer, the Queen of Wands indicates misplaced priorities and distractions from long-term goals. This card also indicates that those in the beholders care are ready to be independent and responsible for their own lives. The beholder has reached a rewarding point where their loved ones are strong enough to make their own decisions. In order to return to her Upright state, the Queen of Wands needs to become grounded again.',
    image: AssetImage(
      'images/minor/wands.jpeg',
    ),
  );

  static final kingOfWands = CardInfo(
    name: 'King of Wands',
    arcana: Arcana.Minor,
    number: 14,
    suit: Suits.Wands,
    uprightDescription:
        'The King of Coins depicts a mature man of considerable earthly power, usually depicted as a diplomatic business-man with a lot of practical wisdom. The king of pentacles can be miserly at times. He has a taste for sensual delights and earthly gifts. Here is a man who has a social standing and is big on keeping up with the Joneses.',
    reverseDescription: '???',
    image: AssetImage(
      'images/minor/wands.jpeg',
    ),
  );

  // Swords
  static final aceOfSwords = CardInfo(
    name: 'Ace of Swords',
    arcana: Arcana.Minor,
    number: 1,
    suit: Suits.Swords,
    uprightDescription:
        'A new financial or career opportunity, manifestation, abundance.',
    reverseDescription: 'Lost opportunity, lack of planning and foresight.',
    image: AssetImage(
      'images/minor/swords.jpeg',
    ),
  );

  static final twoOfSwords = CardInfo(
    name: 'Two of Swords',
    arcana: Arcana.Minor,
    number: 2,
    suit: Suits.Swords,
    uprightDescription:
        'The Two of Swords is a card when upright means to juggle, to struggle in a positive influence, to balance, to maintain.',
    reverseDescription:
        'The Reversed card indicates imbalances, excess juggling, excess struggle, the advice of the card is to re-dress balance.',
    image: AssetImage(
      'images/minor/swords.jpeg',
    ),
  );

  static final threeOfSwords = CardInfo(
    name: 'Three of Swords',
    arcana: Arcana.Minor,
    number: 3,
    suit: Suits.Swords,
    uprightDescription:
        'Mastery of a skill in trade or work; achieving perfection; artistic ability; and dignity through renown rank or power.',
    reverseDescription:
        'Negative attributes (when card is in reverse) include sloppiness resulting in a lower quality outcome; lack of skill; banal ideas; and preoccupation with off task concerns.',
    image: AssetImage(
      'images/minor/swords.jpeg',
    ),
  );

  static final fourOfSwords = CardInfo(
    name: 'Four of Swords',
    arcana: Arcana.Minor,
    number: 4,
    suit: Suits.Swords,
    uprightDescription:
        'A spread containing the Four of Swords refers to a lover of material wealth, one who hoards things of value with no prospect of sharing',
    reverseDescription:
        'In contrast, when the Four of Swords is in reverse it warns against the tendency of being a spendthrift.',
    image: AssetImage(
      'images/minor/swords.jpeg',
    ),
  );

  static final fiveOfSwords = CardInfo(
    name: 'Five of Swords',
    arcana: Arcana.Minor,
    number: 5,
    suit: Suits.Swords,
    uprightDescription:
        'The Five of Swords is a card when upright means to lose all faith, losing resources, losing a lover (mostly shows up when you\'ve had a breakup), and losing security whether financially or emotionally (or both).',
    reverseDescription:
        'The Reversed meaning of the card is when hope returns slowly but surely, you can be positive from the troubles you\'ve recently experienced, mostly shows up when you are back into a relationship again that was once broken, a renewal of faith. The advice of the card is to see a glass as half full not half empty, to seek help when you need it and not fear rejection.',
    image: AssetImage(
      'images/minor/swords.jpeg',
    ),
  );

  static final sixOfSwords = CardInfo(
    name: 'Six of Swords',
    arcana: Arcana.Minor,
    number: 6,
    suit: Suits.Swords,
    uprightDescription:
        'A merchant weighs money in a pair of scales and distributes it to the needy and distressed, signifying the redistribution of wealth and gratification.',
    reverseDescription:
        'Reversed, the card represents desire, cupidity, envy, jealousy and illusion.',
    image: AssetImage(
      'images/minor/swords.jpeg',
    ),
  );

  static final sevenOfSwords = CardInfo(
    name: 'Seven of Swords',
    arcana: Arcana.Minor,
    number: 7,
    suit: Suits.Swords,
    uprightDescription:
        'The Seven of Coins, or The Seven of Swords is a card when upright means to show your commitment towards your work life or dreams, it may seem like charity work to you but it is on the value of receiving emotional and spiritual rewards, like the saying \'success is a journey not a destination\'.',
    reverseDescription:
        'The reversed meaning of the card means, excess energy and personal resources used that can cause a strain, the feeling of giving too much of your time and resources with little reward or assurance of moving forward. The advice of the card is to re-assess your commitment levels, if for too long you are not receiving the results you desire, it may be best to cut your losses especially when it seems to be a bad investment of your time and money.',
    image: AssetImage(
      'images/minor/swords.jpeg',
    ),
  );

  static final eightOfSwords = CardInfo(
    name: 'Eight of Swords',
    arcana: Arcana.Minor,
    number: 8,
    suit: Suits.Swords,
    uprightDescription:
        'An artist in stone at his work, which he exhibits in the form of trophies. Divinatory Meanings: Work, employment, commission, craftsmanship, skill in craft and business, perhaps in the preparatory stage. Steady patience with achievement kept in mind.',
    reverseDescription:
        'Reversed: Voided ambition, vanity, cupidity, exaction, usury. It may also signify the possession of skill, in the sense of the ingenious mind turned to cunning and intrigue.',
    image: AssetImage(
      'images/minor/swords.jpeg',
    ),
  );

  static final nineOfSwords = CardInfo(
    name: 'Nine of Swords',
    arcana: Arcana.Minor,
    number: 9,
    suit: Suits.Swords,
    uprightDescription:
        'The Nine of Coins, or the Nine of Swords is a card when upright means having the financial independence, having the self-reliance of personal pursuits, the ability to treat yourself with luxury, being on a stable financial plateau and steady security.',
    reverseDescription:
        'Reversed, the card means excess spending, being co-dependent on your financials or on others, to feel lonely in your personal pursuits, to feel inadequate financially, to have everything money can buy but yet still feeling impoverished emotionally and spiritually. The advice of the card is to look within the root of your existing problems, to look and focus on what will make you feel complete and secure, yet to learn and grow along the way.',
    image: AssetImage(
      'images/minor/swords.jpeg',
    ),
  );

  static final tenOfSwords = CardInfo(
    name: 'Ten of Swords',
    arcana: Arcana.Minor,
    number: 10,
    suit: Suits.Swords,
    uprightDescription:
        'It is often associated with family matters, financial matters or a mix of the two.',
    reverseDescription: '???',
    image: AssetImage(
      'images/minor/swords.jpeg',
    ),
  );

  static final pageOfSwords = CardInfo(
    name: 'Page of Swords',
    arcana: Arcana.Minor,
    number: 11,
    suit: Suits.Swords,
    uprightDescription:
        'Often used to represent a young person. Can mean a changing of your line of work and/or taking on more responsibility. But primarily, this is the card for students.',
    reverseDescription: '???',
    image: AssetImage(
      'images/minor/swords.jpeg',
    ),
  );

  static final knightOfSwords = CardInfo(
    name: 'Knight of Swords',
    arcana: Arcana.Minor,
    number: 12,
    suit: Suits.Swords,
    uprightDescription:
        'A Knight is generally considered the appropriate card for a teenager or young adult, most often a teenaged boy or young man. Coins are considered the "darkest" of the suits in terms of choosing based on appearance and are meant to represent dark-skinned, dark-haired people. Using this method, a Knight of Coins would be used to represent a young man who is dark of complexion and features.',
    reverseDescription: '???',
    image: AssetImage(
      'images/minor/swords.jpeg',
    ),
  );

  static final queenOfSwords = CardInfo(
    name: 'Queen of Swords',
    arcana: Arcana.Minor,
    number: 13,
    suit: Suits.Swords,
    uprightDescription:
        'The upright Queen of Swords signifies someone down-to-earth, who takes responsibility for many roles in the care for her family. Representing a mature female or feminine presence, the receiver of the upright Queen of Swords has central focus on childcare and wellbeing. However, the Queen of Swords should not be mistaken as only a homebody and housewife. She has the ability to execute effective business strategies under tight time constraints. The Queen of Swords works her magic in the background, as she remains quiet about her accomplishments. Lastly, she desires a simple and minimalist lifestyle--she loves to be calculated, careful and vigilant.',
    reverseDescription:
        'The reversed Queen of Swords can become unattached from reality, leaving her completely self-centered. Some of her traits include being selfish and jealous when others show greater success. For the card drawer, the Queen of Swords indicates misplaced priorities and distractions from long-term goals. This card also indicates that those in the beholders care are ready to be independent and responsible for their own lives. The beholder has reached a rewarding point where their loved ones are strong enough to make their own decisions. In order to return to her Upright state, the Queen of Swords needs to become grounded again.',
    image: AssetImage(
      'images/minor/swords.jpeg',
    ),
  );

  static final kingOfSwords = CardInfo(
    name: 'King of Swords',
    arcana: Arcana.Minor,
    number: 14,
    suit: Suits.Swords,
    uprightDescription:
        'The King of Coins depicts a mature man of considerable earthly power, usually depicted as a diplomatic business-man with a lot of practical wisdom. The king of pentacles can be miserly at times. He has a taste for sensual delights and earthly gifts. Here is a man who has a social standing and is big on keeping up with the Joneses.',
    reverseDescription: '???',
    image: AssetImage(
      'images/minor/swords.jpeg',
    ),
  );
}
