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
    uprightDescription:
        'Perfect contentment, felicity, ecstasy; also speedy intelligence; gold.',
    reverseDescription:
        'The evil side of wealth, bad intelligence; also great riches.',
    image: AssetImage(
      'assets/images/minor/pentacles.png',
    ),
  );

  static final twoOfPentacles = CardInfo(
    name: 'Two of Pentacles',
    arcana: Arcana.Minor,
    number: 2,
    suit: Suits.Pentacles,
    uprightDescription:
        'News and messages in writing, as obstacles, agitation, trouble, embroilment.',
    reverseDescription:
        'Enforced gaiety, simulated enjoyment, literal sense, handwriting, composition, letters of exchange.',
    image: AssetImage(
      'assets/images/minor/pentacles.png',
    ),
  );

  static final threeOfPentacles = CardInfo(
    name: 'Three of Pentacles',
    arcana: Arcana.Minor,
    number: 3,
    suit: Suits.Pentacles,
    uprightDescription:
        'Trade, skilled labor; usually, however, regarded as a card of nobility, aristocracy, renown, glory.',
    reverseDescription:
        'Mediocrity, in work and otherwise, puerility, pettiness, weakness.',
    image: AssetImage(
      'assets/images/minor/pentacles.png',
    ),
  );

  static final fourOfPentacles = CardInfo(
    name: 'Four of Pentacles',
    arcana: Arcana.Minor,
    number: 4,
    suit: Suits.Pentacles,
    uprightDescription:
        'The surety of possessions, cleaving to that which one has, gift, legacy, inheritance.',
    reverseDescription: 'Suspense, delay, opposition.',
    image: AssetImage(
      'assets/images/minor/pentacles.png',
    ),
  );

  static final fiveOfPentacles = CardInfo(
    name: 'Five of Pentacles',
    arcana: Arcana.Minor,
    number: 5,
    suit: Suits.Pentacles,
    uprightDescription:
        'The card foretells material trouble above all, whether in the form illustrated—that is, destitution—or otherwise. For some cartomancists, it is a card of love and lovers—wife, husband, friend, mistress; also concordance, affinities. These alternatives cannot be harmonized.',
    reverseDescription: 'Disorder, chaos, ruin, discord, profligacy.',
    image: AssetImage(
      'assets/images/minor/pentacles.png',
    ),
  );

  static final sixOfPentacles = CardInfo(
    name: 'Six of Pentacles',
    arcana: Arcana.Minor,
    number: 6,
    suit: Suits.Pentacles,
    uprightDescription:
        'Presents, gifts, gratification; another account says attention, vigilance; now is the accepted time, present prosperity, etc.',
    reverseDescription: 'Desire, cupidity, envy, jealousy, illusion.',
    image: AssetImage(
      'assets/images/minor/pentacles.png',
    ),
  );

  static final sevenOfPentacles = CardInfo(
    name: 'Seven of Pentacles',
    arcana: Arcana.Minor,
    number: 7,
    suit: Suits.Pentacles,
    uprightDescription:
        'These are exceedingly contradictory; in the main, it is a card of money, business, barter; but one reading gives altercation, quarrel—and another innocence, ingenuity, purgation.',
    reverseDescription:
        'Cause for anxiety regarding money which it may be proposed to lend.',
    image: AssetImage(
      'assets/images/minor/pentacles.png',
    ),
  );

  static final eightOfPentacles = CardInfo(
    name: 'Eight of Pentacles',
    arcana: Arcana.Minor,
    number: 8,
    suit: Suits.Pentacles,
    uprightDescription:
        'Work, employment, commission, craftsmanship, skill in craft and business, perhaps in the preparatory stage.',
    reverseDescription:
        'Voided ambition, vanity, cupidity, exaction, usury. It may also signify the possession of skill, in the sense of the ingenious mind turned to cunning and intrigue.',
    image: AssetImage(
      'assets/images/minor/pentacles.png',
    ),
  );

  static final nineOfPentacles = CardInfo(
    name: 'Nine of Pentacles',
    arcana: Arcana.Minor,
    number: 9,
    suit: Suits.Pentacles,
    uprightDescription:
        'Prudence, safety, success, accomplishment, certitude, discernment.',
    reverseDescription: 'Roguery, deception, voided project, bad faith.',
    image: AssetImage(
      'assets/images/minor/pentacles.png',
    ),
  );

  static final tenOfPentacles = CardInfo(
    name: 'Ten of Pentacles',
    arcana: Arcana.Minor,
    number: 10,
    suit: Suits.Pentacles,
    uprightDescription:
        'Gain, riches; family matters, archives, extraction, the abode of a family.',
    reverseDescription:
        'Chance, fatality, loss, robbery, games of hazard; sometimes gift, dowry, pension.',
    image: AssetImage(
      'assets/images/minor/pentacles.png',
    ),
  );

  static final pageOfPentacles = CardInfo(
    name: 'Page of Pentacles',
    arcana: Arcana.Minor,
    number: 11,
    suit: Suits.Pentacles,
    uprightDescription:
        'Application, study, scholarship, reflection; another reading says news, messages and the bringer thereof; also rule, management.',
    reverseDescription:
        'Prodigality, dissipation, liberality, luxury, unfavorable news.',
    image: AssetImage(
      'assets/images/minor/pentacles.png',
    ),
  );

  static final knightOfPentacles = CardInfo(
    name: 'Knight of Pentacles',
    arcana: Arcana.Minor,
    number: 12,
    suit: Suits.Pentacles,
    uprightDescription:
        'Utility, serviceableness, interest, responsibility, rectitude—all on the normal and external plane.',
    reverseDescription:
        'Inertia, idleness, repose of that kind, stagnation; also placidity, discouragement, carelessness.',
    image: AssetImage(
      'assets/images/minor/pentacles.png',
    ),
  );

  static final queenOfPentacles = CardInfo(
    name: 'Queen of Pentacles',
    arcana: Arcana.Minor,
    number: 13,
    suit: Suits.Pentacles,
    uprightDescription:
        'Opulence, generosity, magnificence, security, liberty.',
    reverseDescription: 'Evil, suspicion, suspense, fear, mistrust.',
    image: AssetImage(
      'assets/images/minor/pentacles.png',
    ),
  );

  static final kingOfPentacles = CardInfo(
    name: 'King of Pentacles',
    arcana: Arcana.Minor,
    number: 14,
    suit: Suits.Pentacles,
    uprightDescription:
        'Valor, intelligence, business, mathematical gifts, and success in these paths.',
    reverseDescription: 'Vice, weakness, perversity, peril.',
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
    uprightDescription:
        'House of the true heart, joy, content, abode, nourishment, abundance, fertility; Holy Table, felicity hereof.',
    reverseDescription:
        'House of the false heart, mutation, instability, revolution.',
    image: AssetImage(
      'assets/images/minor/cups.png',
    ),
  );

  static final twoOfCups = CardInfo(
    name: 'Two of Cups',
    arcana: Arcana.Minor,
    number: 2,
    suit: Suits.Cups,
    uprightDescription:
        'Love, passion, friendship, affinity, union, concord, sympathy, the inter-relation of the sexes, and—as a suggestion apart from all offices of divination—that desire which is not in Nature, but by which Nature is sanctified.',
    reverseDescription:
        'Love, passion, friendship, affinity, union, concord, sympathy, the inter-relation of the sexes, and—as a suggestion apart from all offices of divination—that desire which is not in Nature, but by which Nature is sanctified.',
    image: AssetImage(
      'assets/images/minor/cups.png',
    ),
  );

  static final threeOfCups = CardInfo(
    name: 'Three of Cups',
    arcana: Arcana.Minor,
    number: 3,
    suit: Suits.Cups,
    uprightDescription:
        'The conclusion of any matter in plenty, perfection and merriment; happy issue, victory, fulfilment, solace, healing.',
    reverseDescription:
        'Expedition, dispatch, achievement, end. It signifies also the side of excess in physical',
    image: AssetImage(
      'assets/images/minor/cups.png',
    ),
  );

  static final fourOfCups = CardInfo(
    name: 'Four of Cups',
    arcana: Arcana.Minor,
    number: 4,
    suit: Suits.Cups,
    uprightDescription:
        'Weariness, disgust, aversion, imaginary vexations, as if the wine of this world had caused satiety only; another wine, as if a fairy gift, is now offered the wastrel, but he sees no consolation therein. This is also a card of blended pleasure.',
    reverseDescription: 'Novelty, presage, new instruction, new relations.',
    image: AssetImage(
      'assets/images/minor/cups.png',
    ),
  );

  static final fiveOfCups = CardInfo(
    name: 'Five of Cups',
    arcana: Arcana.Minor,
    number: 5,
    suit: Suits.Cups,
    uprightDescription:
        'It is a card of loss, but something remains over; three have been taken, but two are left; it is a card of inheritance, patrimony, transmission, but not corresponding to expectations; with some interpreters it is a card of marriage, but not without bitterness or frustration.',
    reverseDescription:
        'News, alliances, affinity, consanguinity, ancestry, return, false projects.',
    image: AssetImage(
      'assets/images/minor/cups.png',
    ),
  );

  static final sixOfCups = CardInfo(
    name: 'Six of Cups',
    arcana: Arcana.Minor,
    number: 6,
    suit: Suits.Cups,
    uprightDescription:
        'A card of the past and of memories, looking back, as—for example—on childhood; happiness, enjoyment, but coming rather from the past; things that have vanished. Another reading reverses this, giving new relations, new knowledge, new environment, and then the children are disporting in an unfamiliar precinct.',
    reverseDescription:
        'The future, renewal, that which will come to pass presently.',
    image: AssetImage(
      'assets/images/minor/cups.png',
    ),
  );

  static final sevenOfCups = CardInfo(
    name: 'Seven of Cups',
    arcana: Arcana.Minor,
    number: 7,
    suit: Suits.Cups,
    uprightDescription:
        'Fairy favors, images of reflection, sentiment, imagination, things seen in the glass of contemplation; some attainment in these degrees, but nothing permanent or substantial is suggested.',
    reverseDescription: 'Desire, will, determination, project.',
    image: AssetImage(
      'assets/images/minor/cups.png',
    ),
  );

  static final eightOfCups = CardInfo(
    name: 'Eight of Cups',
    arcana: Arcana.Minor,
    number: 8,
    suit: Suits.Cups,
    uprightDescription:
        'The card speaks for itself on the surface, but other readings are entirely antithetical—giving joy, mildness, timidity, honor, modesty. In practice, it is usually found that the card shows the decline of a matter, or that a matter which has been thought to be important is really of slight consequence—either for good or evil.',
    reverseDescription: 'Great joy, happiness, feasting.',
    image: AssetImage(
      'assets/images/minor/cups.png',
    ),
  );

  static final nineOfCups = CardInfo(
    name: 'Nine of Cups',
    arcana: Arcana.Minor,
    number: 9,
    suit: Suits.Cups,
    uprightDescription:
        'Concord, contentment, physical bien-être; also victory, success, advantage; satisfaction for the Querent or person for whom the consultation is made.',
    reverseDescription:
        'Truth, loyalty, liberty; but the readings vary and include mistakes, imperfections, etc.',
    image: AssetImage(
      'assets/images/minor/cups.png',
    ),
  );

  static final tenOfCups = CardInfo(
    name: 'Ten of Cups',
    arcana: Arcana.Minor,
    number: 10,
    suit: Suits.Cups,
    uprightDescription:
        'Contentment, repose of the entire heart; the perfection of that state; also perfection of human love and friendship; if with several picture-cards, a person who is taking charge of the Querent\'s interests; also the town, village or country inhabited by the Querent.',
    reverseDescription: 'Repose of the false heart, indignation, violence.',
    image: AssetImage(
      'assets/images/minor/cups.png',
    ),
  );

  static final pageOfCups = CardInfo(
    name: 'Page of Cups',
    arcana: Arcana.Minor,
    number: 11,
    suit: Suits.Cups,
    uprightDescription:
        'Fair young man, one impelled to render service and with whom the Querent will be connected; a studious youth; news, message; application, reflection, meditation; also these things directed to business.',
    reverseDescription:
        'Taste, inclination, attachment, seduction, deception, artifice.',
    image: AssetImage(
      'assets/images/minor/cups.png',
    ),
  );

  static final knightOfCups = CardInfo(
    name: 'Knight of Cups',
    arcana: Arcana.Minor,
    number: 12,
    suit: Suits.Cups,
    uprightDescription:
        'Arrival, approach—sometimes that of a messenger; advances, proposition, demeanor, invitation, incitement.',
    reverseDescription:
        'Trickery, artifice, subtlety, swindling, duplicity, fraud.',
    image: AssetImage(
      'assets/images/minor/cups.png',
    ),
  );

  static final queenOfCups = CardInfo(
    name: 'Queen of Cups',
    arcana: Arcana.Minor,
    number: 13,
    suit: Suits.Cups,
    uprightDescription:
        'Good, fair woman; honest, devoted woman, who will do service to the Querent; loving intelligence, and hence the gift of vision; success, happiness, pleasure; also wisdom, virtue; a perfect spouse and a good mother.',
    reverseDescription:
        'The accounts vary; good woman; otherwise, distinguished woman but one not to be trusted; perverse woman; vice, dishonor, depravity.',
    image: AssetImage(
      'assets/images/minor/cups.png',
    ),
  );

  static final kingOfCups = CardInfo(
    name: 'King of Cups',
    arcana: Arcana.Minor,
    number: 14,
    suit: Suits.Cups,
    uprightDescription:
        'Fair man, man of business, law, or divinity; responsible, disposed to oblige the Querent; also equity, art and science, including those who profess science, law and art; creative intelligence.',
    reverseDescription:
        'Dishonest, double-dealing man; roguery, exaction, injustice, vice, scandal, pillage, considerable loss.',
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
    uprightDescription:
        'Creation, invention, enterprise, the powers which result in these; principle, beginning, source; birth, family, origin, and in a sense the virility which is behind them; the starting point of enterprises; according to another account, money, fortune, inheritance.',
    reverseDescription:
        'Fall, decadence, ruin, perdition, to perish; also a certain clouded joy.',
    image: AssetImage(
      'assets/images/minor/wands.png',
    ),
  );

  static final twoOfWands = CardInfo(
    name: 'Two of Wands',
    arcana: Arcana.Minor,
    number: 2,
    suit: Suits.Wands,
    uprightDescription:
        'Between the alternative readings there is no marriage possible; on the one hand, riches, fortune, magnificence; on the other, physical suffering, disease, chagrin, sadness, mortification. The design gives one suggestion; here is a lord overlooking his dominion and alternately contemplating a globe; it looks like the malady, the mortification, the sadness of Alexander amidst the grandeur of this world\'s wealth.',
    reverseDescription:
        'Surprise, wonder, enchantment, emotion, trouble, fear.',
    image: AssetImage(
      'assets/images/minor/wands.png',
    ),
  );

  static final threeOfWands = CardInfo(
    name: 'Three of Wands',
    arcana: Arcana.Minor,
    number: 3,
    suit: Suits.Wands,
    uprightDescription:
        'He symbolizes established strength, enterprise, effort, trade, commerce, discovery; those are his ships, bearing his merchandise, which are sailing over the sea. The card also signifies able co-operation in business, as if the successful merchant prince were looking from his side towards yours with a view to help you.',
    reverseDescription:
        'The end of troubles, suspension or cessation of adversity, toil and disappointment.',
    image: AssetImage(
      'assets/images/minor/wands.png',
    ),
  );

  static final fourOfWands = CardInfo(
    name: 'Four of Wands',
    arcana: Arcana.Minor,
    number: 4,
    suit: Suits.Wands,
    uprightDescription:
        'They are for once almost on the surface—country life, haven of refuge, a species of domestic harvest-home, repose, concord, harmony, prosperity, peace, and the perfected work of these.',
    reverseDescription:
        'The meaning remains unaltered; it is prosperity, increase, felicity, beauty, embellishment.',
    image: AssetImage(
      'assets/images/minor/wands.png',
    ),
  );

  static final fiveOfWands = CardInfo(
    name: 'Five of Wands',
    arcana: Arcana.Minor,
    number: 5,
    suit: Suits.Wands,
    uprightDescription:
        'Imitation, as, for example, sham fight, but also the strenuous competition and struggle of the search after riches and fortune. In this sense it connects with the battle of life. Hence some attributions say that it is a card of gold, gain, opulence.',
    reverseDescription: 'Litigation, disputes, trickery, contradiction.',
    image: AssetImage(
      'assets/images/minor/wands.png',
    ),
  );

  static final sixOfWands = CardInfo(
    name: 'Six of Wands',
    arcana: Arcana.Minor,
    number: 6,
    suit: Suits.Wands,
    uprightDescription:
        'The card has been so designed that it can cover several significations; on the surface, it is a victor triumphing, but it is also great news, such as might be carried in state by the King\'s courier; it is expectation crowned with its own desire, the crown of hope, and so forth.',
    reverseDescription:
        'Apprehension, fear, as of a victorious enemy at the gate; treachery, disloyalty, as of gates being opened to the enemy; also indefinite delay.',
    image: AssetImage(
      'assets/images/minor/wands.png',
    ),
  );

  static final sevenOfWands = CardInfo(
    name: 'Seven of Wands',
    arcana: Arcana.Minor,
    number: 7,
    suit: Suits.Wands,
    uprightDescription:
        'It is a card of valor, for, on the surface, six are attacking one, who has, however, the vantage position. On the intellectual plane, it signifies discussion, wordy strife; in business—negotiations, war of trade, barter, competition. It is further a card of success, for the combatant is on the top and his enemies may be unable to reach him.',
    reverseDescription:
        'Perplexity, embarrassments, anxiety. It is also a caution against indecision.',
    image: AssetImage(
      'assets/images/minor/wands.png',
    ),
  );

  static final eightOfWands = CardInfo(
    name: 'Eight of Wands',
    arcana: Arcana.Minor,
    number: 8,
    suit: Suits.Wands,
    uprightDescription:
        'Activity in undertakings, the path of such activity, swiftness, as that of an express messenger; great haste, great hope, speed towards an end which promises assured felicity; generally, that which is on the move; also the arrows of love.',
    reverseDescription:
        'Arrows of jealousy, internal dispute, stingings of conscience, quarrels; and domestic disputes for persons who are married.',
    image: AssetImage(
      'assets/images/minor/wands.png',
    ),
  );

  static final nineOfWands = CardInfo(
    name: 'Nine of Wands',
    arcana: Arcana.Minor,
    number: 9,
    suit: Suits.Wands,
    uprightDescription:
        'The card signifies strength in opposition. If attacked, the person will meet an onslaught boldly; and his build shows that he may prove a formidable antagonist. With this main significance there are all its possible adjuncts—delay, suspension, adjournment.',
    reverseDescription: 'Obstacles, adversity, calamity.',
    image: AssetImage(
      'assets/images/minor/wands.png',
    ),
  );

  static final tenOfWands = CardInfo(
    name: 'Ten of Wands',
    arcana: Arcana.Minor,
    number: 10,
    suit: Suits.Wands,
    uprightDescription:
        'A card of many significances, and some of the readings cannot be harmonized. I set aside that which connects it with honor and good faith. The chief meaning is oppression simply, but it is also fortune, gain, any kind of success, and then it is the oppression of these things. It is also a card of false-seeming, disguise, perfidy. The place which the figure is approaching may suffer from the rods that he carries. Success is stultified if the Nine of Swords follows, and if it is a question of a lawsuit, there will be certain loss.',
    reverseDescription:
        'Contrarieties, difficulties, intrigues, and their analogies.',
    image: AssetImage(
      'assets/images/minor/wands.png',
    ),
  );

  static final pageOfWands = CardInfo(
    name: 'Page of Wands',
    arcana: Arcana.Minor,
    number: 11,
    suit: Suits.Wands,
    uprightDescription:
        'Dark young man, faithful, a lover, an envoy, a postman. Beside a man, he will bear favorable testimony concerning him. A dangerous rival, if followed by the Page of Cups. Has the chief qualities of his suit. He may signify family intelligence.',
    reverseDescription:
        'Anecdotes, announcements, evil news. Also indecision and the instability which accompanies it.',
    image: AssetImage(
      'assets/images/minor/wands.png',
    ),
  );

  static final knightOfWands = CardInfo(
    name: 'Knight of Wands',
    arcana: Arcana.Minor,
    number: 12,
    suit: Suits.Wands,
    uprightDescription:
        'Departure, absence, flight, emigration. A dark young man, friendly. Change of residence.',
    reverseDescription: 'Rupture, division, interruption, discord.',
    image: AssetImage(
      'assets/images/minor/wands.png',
    ),
  );

  static final queenOfWands = CardInfo(
    name: 'Queen of Wands',
    arcana: Arcana.Minor,
    number: 13,
    suit: Suits.Wands,
    uprightDescription:
        'A dark woman, country-woman, friendly, chaste, loving, honorable. If the card beside her signifies a man, she is well disposed towards him; if a woman, she is interested in the Querent. Also, love of money, or a certain success in business.',
    reverseDescription:
        'Good, economical, obliging, serviceable. Signifies also—but in certain positions and in the neighborhood of other cards tending in such directions—opposition, jealousy, even deceit and infidelity.',
    image: AssetImage(
      'assets/images/minor/wands.png',
    ),
  );

  static final kingOfWands = CardInfo(
    name: 'King of Wands',
    arcana: Arcana.Minor,
    number: 14,
    suit: Suits.Wands,
    uprightDescription:
        'Dark man, friendly, countryman, generally married, honest and conscientious. The card always signifies honesty, and may mean news concerning an unexpected heritage to fall in before very long.',
    reverseDescription: 'Good, but severe; austere, yet tolerant.',
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
