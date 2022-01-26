import 'dart:math';

import 'package:basic_utils/basic_utils.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';

// TODO(mjcastner): Clean this data structure up, if possible.
final tarotArcana = <String, Map>{
  'major': {
    'the fool': {
      'description': {
        'upright':
            'Folly, mania, extravagance, intoxication, delirium, frenzy, bewrayment.',
        'reversed':
            'Negligence, absence, distribution, carelessness, apathy, nullity, vanity.',
      },
      'image': 'images/the_fool.jpg',
    },
    'the magician': {
      'description': {
        'upright':
            'On the broad level, the Magician is interpreted with energy, potential, and the manifestation of one\'s desires; the card symbolizes the meetings of the physical and spiritual worlds ("as above, so below") and the conduit converting spiritual energy into real-world action.',
        'reversed':
            'The reversed Magician can also be interpreted as related to black magick and to madness or mental distress.',
      },
      'image': 'images/the_magician.jpg',
    },
    'the high priestess': {
      'description': {
        'upright':
            'Secrets, mystery, the future as yet unrevealed; the woman who interests the Querent, if male; the Querent herself, if female; silence, tenacity; mystery, wisdom, science.',
        'reversed':
            'Reversed: Passion, moral or physical ardor, conceit, surface knowledge.',
      },
      'image': 'images/the_high_priestess.jpg',
    },
    'the empress': {
      'description': {
        'upright':
            'Fruitfulness, action, initiative, length of days; the unknown, clandestine; also difficulty, doubt, ignorance.',
        'reversed':
            'Light, truth, the unraveling of involved matters, public rejoicings; according to another reading, vacillation.',
      },
      'image': 'images/the_empress.jpg',
    },
    'the emperor': {
      'description': {
        'upright':
            'Stability, power, protection, realization; a great person; aid, reason, conviction also authority and will.',
        'reversed':
            'Benevolence, compassion, credit; also confusion to enemies, obstruction, immaturity.',
      },
      'image': 'images/the_emperor.jpg',
    },
    'the hierophant': {
      'description': {
        'upright':
            'Marriage, alliance, captivity, servitude; by another account, mercy, and goodness; inspiration; the man to whom the Querent has recourse.',
        'reversed':
            'Society, good understanding, concord, over kindness, weakness.',
      },
      'image': 'images/the_hierophant.jpg',
    },
    'the lovers': {
      'description': {
        'upright': 'Attraction, love, beauty, trials overcome.',
        'reversed':
            'Failure, foolish designs. Another account speaks of marriage frustrated and contrarieties of all kinds.',
      },
      'image': 'images/the_lovers.jpg',
    },
    'the chariot': {
      'description': {
        'upright':
            'Succour, providence; also war, triumph, presumption, vengeance, trouble.',
        'reversed': 'Riot, quarrel, dispute, litigation, defeat.',
      },
      'image': 'images/the_chariot.jpg',
    },
    'strength': {
      'description': {
        'upright':
            'Power, energy, action, courage, magnanimity; also complete success and honours.',
        'reversed':
            'Despotism, abuse of power, weakness, discord, sometimes even disgrace.',
      },
      'image': 'images/strength.jpg',
    },
    'the hermit': {
      'description': {
        'upright':
            'Prudence, circumspection; also and especially treason, dissimulation, roguery, corruption.',
        'reversed': 'Concealment, disguise, policy fear, unreasoned caution.',
      },
      'image': 'images/the_hermit.jpg',
    },
    'wheel of fortune': {
      'description': {
        'upright': 'Destiny, fortune, success, elevation, luck, felicity.',
        'reversed': 'Increase, abundance, superfluity.',
      },
      'image': 'images/wheel_of_fortune.jpg',
    },
    'justice': {
      'description': {
        'upright':
            'Equity, rightness, probity, executive; triumph of the deserving side in law.',
        'reversed':
            'Law in all its departments, legal complications, bigotry, bias, excessive severity.',
      },
      'image': 'images/justice.jpg',
    },
    'the hanged man': {
      'description': {
        'upright':
            'Wisdom, circumspection, discernment, trials, sacrifice, intuition, divination, prophecy.',
        'reversed': 'Selfishness, the crowd, body politic.',
      },
      'image': 'images/the_hanged_man.jpg',
    },
    'death': {
      'description': {
        'upright':
            'End, mortality, destruction, corruption; also, for a man, the loss of a benefactor; for a woman, many contrarieties; for a maid, failure of marriage projects.',
        'reversed':
            'Inertia, sleep, lethargy, petrifaction, somnambulism; hope.',
      },
      'image': 'images/death.jpg',
    },
    'temperance': {
      'description': {
        'upright': 'Economy, moderation, frugality, management, accommodation.',
        'reversed':
            'Things connected with churches, religions, sects, the priesthood, sometimes even the priest who will marry Querent; also disunion, unfortunate combinations, competing interests.',
      },
      'image': 'images/temperance.jpg',
    },
    'the devil': {
      'description': {
        'upright':
            'Ravage, violence, vehemence, extraordinary efforts, force, fatality; that which is predestined but is not for this reason evil.',
        'reversed': 'Evil fatality, weakness, pettiness, blindness.',
      },
      'image': 'images/the_devil.jpg',
    },
    'the tower': {
      'description': {
        'upright':
            'Misery, distress, indigence, adversity, calamity, disgrace, deception, ruin. It is a card in particular of unforeseen catastrophe.',
        'reversed':
            'Negligence, absence, distribution, carelessness, distraction, apathy, nullity, vanity.',
      },
      'image': 'images/the_tower.jpg',
    },
    'the star': {
      'description': {
        'upright': 'Hope and bright prospects.',
        'reversed':
            'Loss, theft, privation, abandonment; another reading says: arrogance, haughtiness, impotence.',
      },
      'image': 'images/the_star.jpg',
    },
    'the moon': {
      'description': {
        'upright':
            'Hidden enemies, danger, calumny, darkness, terror, deception, occult forces, error.',
        'reversed':
            'Instability, inconstancy, silence, lesser degrees of deception and error.',
      },
      'image': 'images/the_moon.jpg',
    },
    'the sun': {
      'description': {
        'upright': 'Material happiness, fortunate marriage, contentment.',
        'reversed':
            'Material happiness, fortunate marriage, contentment. Reversed: The same in a lesser sense.',
      },
      'image': 'images/the_sun.jpg',
    },
    'judgement': {
      'description': {
        'upright':
            'The Judgement card appearing in a reading signifies that you are coming close to this significant point in your life where you must start to evaluate yourself.',
        'reversed':
            'Poor logic, self-doubt, poor or hasty judgement, stagnation.',
      },
      'image': 'images/judgement.jpg',
    },
    'the world': {
      'description': {
        'upright':
            'Assured success, recompense, voyage, route, emigration, flight, change of place.',
        'reversed': 'Inertia, fixity, stagnation, permanence.',
      },
      'image': 'images/the_world.jpg',
    },
  },
  'minor': {
    'pentacles': {
      'description':
          'Pentacles are coins and represent earthly circumstances like money, family and health. Historically the Pentacles represent the working class.',
      'image': 'images/pentacles.jpeg',
      'card_text': {
        1: {
          'upright':
              'A new financial or career opportunity, manifestation, abundance.',
          'reversed': 'Lost opportunity, lack of planning and foresight.',
        },
        2: {
          'upright':
              'The Two of Pentacles is a card when upright means to juggle, to struggle in a positive influence, to balance, to maintain.',
          'reversed':
              'The Reversed card indicates imbalances, excess juggling, excess struggle, the advice of the card is to re-dress balance.',
        },
        3: {
          'upright':
              'Mastery of a skill in trade or work; achieving perfection; artistic ability; and dignity through renown rank or power.',
          'reversed':
              'Negative attributes (when card is in reverse) include sloppiness resulting in a lower quality outcome; lack of skill; banal ideas; and preoccupation with off task concerns.',
        },
        4: {
          'upright':
              'A spread containing the Four of Pentacles refers to a lover of material wealth, one who hoards things of value with no prospect of sharing',
          'reversed':
              'In contrast, when the Four of Pentacles is in reverse it warns against the tendency of being a spendthrift.',
        },
        5: {
          'upright':
              'The Five of Pentacles is a card when upright means to lose all faith, losing resources, losing a lover (mostly shows up when you\'ve had a breakup), and losing security whether financially or emotionally (or both).',
          'reversed':
              'The Reversed meaning of the card is when hope returns slowly but surely, you can be positive from the troubles you\'ve recently experienced, mostly shows up when you are back into a relationship again that was once broken, a renewal of faith. The advice of the card is to see a glass as half full not half empty, to seek help when you need it and not fear rejection.',
        },
        6: {
          'upright':
              'A merchant weighs money in a pair of scales and distributes it to the needy and distressed, signifying the redistribution of wealth and gratification.',
          'reversed':
              'Reversed, the card represents desire, cupidity, envy, jealousy and illusion.',
        },
        7: {
          'upright':
              'The Seven of Coins, or The Seven of Pentacles is a card when upright means to show your commitment towards your work life or dreams, it may seem like charity work to you but it is on the value of receiving emotional and spiritual rewards, like the saying \'success is a journey not a destination\'.',
          'reversed':
              'The reversed meaning of the card means, excess energy and personal resources used that can cause a strain, the feeling of giving too much of your time and resources with little reward or assurance of moving forward. The advice of the card is to re-assess your commitment levels, if for too long you are not receiving the results you desire, it may be best to cut your losses especially when it seems to be a bad investment of your time and money.',
        },
        8: {
          'upright':
              'An artist in stone at his work, which he exhibits in the form of trophies. Divinatory Meanings: Work, employment, commission, craftsmanship, skill in craft and business, perhaps in the preparatory stage. Steady patience with achievement kept in mind.',
          'reversed':
              'Reversed: Voided ambition, vanity, cupidity, exaction, usury. It may also signify the possession of skill, in the sense of the ingenious mind turned to cunning and intrigue.',
        },
        9: {
          'upright':
              'The Nine of Coins, or the Nine of Pentacles is a card when upright means having the financial independence, having the self-reliance of personal pursuits, the ability to treat yourself with luxury, being on a stable financial plateau and steady security.',
          'reversed':
              'Reversed, the card means excess spending, being co-dependent on your financials or on others, to feel lonely in your personal pursuits, to feel inadequate financially, to have everything money can buy but yet still feeling impoverished emotionally and spiritually. The advice of the card is to look within the root of your existing problems, to look and focus on what will make you feel complete and secure, yet to learn and grow along the way.',
        },
        10: {
          'upright':
              'It is often associated with family matters, financial matters or a mix of the two.',
          'reversed': '???',
        },
        11: {
          'upright':
              'Often used to represent a young person. Can mean a changing of your line of work and/or taking on more responsibility. But primarily, this is the card for students.',
          'reversed': '???',
        },
        12: {
          'upright':
              'A Knight is generally considered the appropriate card for a teenager or young adult, most often a teenaged boy or young man. Coins are considered the "darkest" of the suits in terms of choosing based on appearance and are meant to represent dark-skinned, dark-haired people. Using this method, a Knight of Coins would be used to represent a young man who is dark of complexion and features.',
          'reversed': '???',
        },
        13: {
          'upright':
              'The upright Queen of Pentacles signifies someone down-to-earth, who takes responsibility for many roles in the care for her family. Representing a mature female or feminine presence, the receiver of the upright Queen of Pentacles has central focus on childcare and wellbeing. However, the Queen of Pentacles should not be mistaken as only a homebody and housewife. She has the ability to execute effective business strategies under tight time constraints. The Queen of Pentacles works her magic in the background, as she remains quiet about her accomplishments. Lastly, she desires a simple and minimalist lifestyle--she loves to be calculated, careful and vigilant.',
          'reversed':
              'The reversed Queen of Pentacles can become unattached from reality, leaving her completely self-centered. Some of her traits include being selfish and jealous when others show greater success. For the card drawer, the Queen of Pentacles indicates misplaced priorities and distractions from long-term goals. This card also indicates that those in the beholders care are ready to be independent and responsible for their own lives. The beholder has reached a rewarding point where their loved ones are strong enough to make their own decisions. In order to return to her Upright state, the Queen of Pentacles needs to become grounded again.',
        },
        14: {
          'upright':
              'The King of Coins depicts a mature man of considerable earthly power, usually depicted as a diplomatic business-man with a lot of practical wisdom. The king of pentacles can be miserly at times. He has a taste for sensual delights and earthly gifts. Here is a man who has a social standing and is big on keeping up with the Joneses.',
          'reversed': '???',
        },
      },
    },
    'cups': {
      'description':
          'The flowing of emotions, internal and external as well as relationships.',
      'image': 'images/cups.jpeg',
      'card_text': {
        1: {
          'upright':
              'This Ace requires the diviner to examine their life to see how creating love works there. This card often means that love is the essence of the situation, the heart of the matter. It may or may not be romantic love, and can depend on other cards around it.',
          'reversed': '???',
        },
        2: {
          'upright':
              'Partnerships and unions are represented by the Two of Cups. Much like the Lovers card in the Major Arcana, energies come together to create a mutual bond. Beauty, power, and electric vibrations occur, bringing romance and sexual energy to the scene. Platonic relationships also benefit from the Two of Cups. This is the card that signifies reconciliation.',
          'reversed':
              'Reversed, this card indicates that pairing off to the exclusion of all other people and situations is happening. Take the time to bring balance into life by including other factors. Unhealthy relationships that consume all one\'s energy need to be examined, and a new course of action decided upon.',
        },
        3: {
          'upright':
              'The Three of Cups represents groups coming together to focus on a common emotional goal. People reach out emotionally to one another. It speaks of a sense of community, and can indicate the time to get more involved by helping.',
          'reversed':
              'Reversed, the Three of Cups suggests that isolation from others is occurring. It is the time to take charge of the situation and to get out into the community. Consider joining a group or organization, and if the need for support is present, seek out the necessary resources.',
        },
        4: {
          'upright': '???',
          'reversed': '???',
        },
        5: {
          'upright':
              'This card often carries the meaning of emotional dejection, disappointment and sorrow over past events. There may be a tendency to "cry over spilt milk". It can also represent the failure to see the good in a given situation. Although the figure represented on the card has lost three of his cups, two still stand, yet he fails to appreciate what he has left. A river flows in front of the figure, with a bridge leading to a safe destination, and yet he remains focused on the loss of his cups.',
          'reversed': '???',
        },
        6: {
          'upright':
              'The six of cups in the esoteric use of the card stands for innocence and nostalgia when it is an upright position.',
          'reversed':
              'When this card is in a reversed position, it represents the themes of being stuck in the past, naïve, and unrealistic. Another way it has been interpreted is that it means that it is time to look back to a simpler way of thinking. Unquestionable love is a more modern interpretation.',
        },
        7: {
          'upright':
              'According to some, this Card represents self-delusion, while others emphasize choice or temptation. Under rare and extreme circumstances, it may indicate the revelation of transcendental spiritual truth(s).',
          'reversed':
              'A period of clarity after a time of confusion. It can also indicate that long-held dreams or ambitions are being overturned, either for good or ill.',
        },
        8: {
          'upright':
              'This indicates changes in affections and the breaking of irrelevant links with the past - a turning away from existing relationships and objects of affection with the intent of progressing to that which is new and deeper in meaning. A change or gaining of perspective, this can indicate disillusion with the present, inaugurating the growth of greater future contentment and depth.',
          'reversed': '???',
        },
        9: {
          'upright':
              'Feeling satisfied. Indulging in a little smugness. Enjoying the situation just as it is. Feeling pleased as punch. Getting the results you hoped for. Feeling all\'s well with the world. Being contented.',
          'reversed':
              'In its reversed position, this card indicates unrealistic wishes or dreams which are not destined to become reality.',
        },
        10: {
          'upright':
              'The divinatory message is evident in this image, in that it represents fortunate marriage, contentment of the heart, and the perfection of human love and friendship. It can also refer to the town or country where the querent lives. This is one of the most positive cards in the entire Tarot deck.',
          'reversed':
              'Reversed, it can refer to quarreling, violence, and a troubled heart.',
        },
        11: {
          'upright':
              'This card encourages love, laughter, and positivity. There is an appreciation for expressing emotions freely. This card can create new creative ideas and reveal artistic qualities. Listening to your body mentally, physically, and spiritually is a key element to this card.',
          'reversed': '???',
        },
        12: {
          'upright':
              'If the card is upright, it represents change and new excitements, particularly of a romantic nature. It can mean invitations, opportunities, and offers. The Knight of Cups is a person who is a bringer of ideas, opportunities and offers. He is constantly bored, and in constant need of stimulation, but also artistic and refined. He represents a person who is amiable, intelligent, and full of high principles, but a dreamer who can be easily persuaded or discouraged.',
          'reversed':
              'Reversed, the card represents unreliability and recklessness. It indicates fraud, false promises and trickery. It represents a person who has trouble discerning when and where the truth ends and lies begin.',
        },
        13: {
          'upright':
              'The card depicts a mature woman of fair complexion and golden hair who holds a lidded cup or chalice. She is described as a model of loving virtue, one who is purer of heart than most, a loving mother, and a loyal friend.',
          'reversed':
              'The inverted card may warn the querent of a false lover or a deceitful friend or companion who may have a secret; someone who pretends to be pure of heart but is actually treacherous and manipulative.',
        },
        14: {
          'upright':
              'The personality of the King of Cups is a combination of the positive nurturing energy of water of the Cups suit and the active, outward focus of a King. The king of cups can be a wonderful guide and mentor as he is usually a giver of unselfish aid, albeit one who is easily angered. He cares about others sincerely and always responds to their needs with compassion. He heals with a gentle touch and a quiet word. He is usually tolerant of all points of view and shows patience in the most trying of circumstances.',
          'reversed': '???',
        },
      },
    },
    'wands': {
      'description':
          'The symbol of moving up in the world; no longer having to worry about day-to-day life and being able to focus long-term on where you will spend your time and energy. Wands represent personal and career growth.',
      'image': 'images/wands.jpeg',
      'card_text': {
        1: {
          'upright':
              'When the Ace of Wands appears upright, readers often interpret a call for creativity and ambition.',
          'reversed':
              'If the Ace of Wands appears reversed, it is often taken as circumstances delaying progress.',
        },
        2: {
          'upright': '???',
          'reversed': '???',
        },
        3: {
          'upright':
              'A calm onlooker facing towards the sea. There\'s a possibility that he is a merchant or looking forward to a journey. The three represents creation - looking forward to something with optimism - a mission. This card symbolizes enterprise, trade, or commerce.',
          'reversed':
              'If the card is in reversed, it means the end of a task, toil, a cessation, and disappointment.',
        },
        4: {
          'upright':
              'This card is generally considered positive. It is said to reflect harmony and positive feelings, hard work with good results.',
          'reversed': '???',
        },
        5: {
          'upright': 'Anxiety, Conflict, Disagreement, Strife, Struggle.',
          'reversed': '???',
        },
        6: {
          'upright':
              'Completion, Good news, Reward and recognition, Success, Triumph.',
          'reversed': '???',
        },
        7: {
          'upright':
              'The Seven of Wands defender stands ready for battle. It is about defending the footing gained. It is the ability to cultivate the struggles at hand into a stronger position. He stands alone against a multitude, but perseveres. It is he alone who maintains the fight and is not beaten.',
          'reversed': '???',
        },
        8: {
          'upright':
              'A card of action; swiftness. Conveys immediate information or action. News swiftly travelling. Because the suit of Wands relates to information, look for new communication and unexpected news. Depending on surrounding cards in the draw, may indicate the speed of these events.',
          'reversed': '???',
        },
        9: {
          'upright':
              'This card depicts a figure, weary from battle yet prepared to fight on. Order, discipline an unassailable position. Any opposition will be defeated. Courage in the face of attack or adversity and a stability that cannot be removed. Good health.',
          'reversed':
              'Dignified or Reversed - Lack or inability to give and take. Projects pursued that are destined to fail because of their impractical nature. Delays and disarray. Card could indicate possible poor or ill health. A secure position that is no longer. Personality flaws may, in fact, be stepping-stones to the throne of harmony.',
        },
        10: {
          'upright':
              'Burdens, Challenges, Intense pressure, Oppression, Overcommitment',
          'reversed': '???',
        },
        11: {
          'upright':
              'When comparing what you want to "move" and what is "moving" you, experiences become less important. That is the danger, and yet it is also a chance. Don\'t "lose" yourself and don\'t lose your chance. When this card appears, it\'s time for a new beginning that will bring you to the point where you discover the true power and energy of your own fire, your personal power.',
          'reversed': '???',
        },
        12: {
          'upright':
              'The key meanings of the Knight of Wands: are challenge, determination, foreign travel, leadership, and unpredictability.',
          'reversed': '???',
        },
        13: {
          'upright':
              'The Queen of Wands is said by some to represent one\'s basic instinct. Her strength and task are providing initial inputs. She says to you that you must think of the consequences of what you do, but that you must be sure to focus on what will get you moving and how to do it.',
          'reversed':
              'The card reversed could represent qualities such as good, economical, obliging, serviceable and hospitality. It can also signify opposition, jealousy, and even deceit and infidelity.',
        },
        14: {
          'upright':
              'Authority figure, Financial gain, Honest and trustworthy, Mediation, Professional',
          'reversed': '???',
        },
      },
    },
    'swords': {
      'description':
          'The swords contain great change and swift movement. Life purpose and spirituality are two of the core principles of swords. The swords are representaative of the ruling class.',
      'image': 'images/swords.jpeg',
      'card_text': {
        1: {
          'upright':
              'It is a card of great force, in love as well as in hatred: it can indicate great property or great misery.',
          'reversed':
              'It is a card of great force, in love as well as in hatred: it can indicate great property or great misery. Reversed - the same but the results are disastrous.',
        },
        2: {
          'upright':
              'This is a card of meditation, not of action. The crossed swords point to different possible directions, but for the moment the character is looking inward rather than outward and in the possession of an awesome power that protects her until she finds the direction to apply it.',
          'reversed': '???',
        },
        3: {
          'upright':
              'This card depicts a fundamentally sorrowful experience— tarot readers suggest this may be in the form of a lost relationship, an accidental death, or some other form of not just depression or malaise but deeply emotional sorrow.',
          'reversed':
              'When the card appears "reversed" in a spread, this is not usually read as meaning the "opposite" of sorrow, but rather a sorrow that is somehow mitigated by its circumstances or that is not as bad as it could have been. It is among the most negative cards within the tarot deck.',
        },
        4: {
          'upright':
              'Vigilance, retreat, solitude, hermit\'s repose, exile, tomb and coffin. The single sword at the knight\'s side indicates a singularity of purpose and a great focus in life.',
          'reversed':
              'Reversed: wise administration, circumspection, economy, avarice, precaution, testament.',
        },
        5: {
          'upright':
              'This card can represent dangerous overconfidence, and in its reversed form indicates a seeming-triumph which will be ultimately calamitous.',
          'reversed':
              'This card can represent dangerous overconfidence, and in its reversed form indicates a seeming-triumph which will be ultimately calamitous.',
        },
        6: {
          'upright':
              'Upright it can mean: gradual change, movement, or travel away from difficulty or imminent danger; the solution of current problems; long journeys and passage from pain; or obstacles which are overcome.',
          'reversed': '???',
        },
        7: {
          'upright':
              'The Seven of Swords, when upright, means to use your wits for diplomacy and not to use aggression. This is why it can be viewed as secret planning or hidden dishonor. Your acts may be legitimate. However, you prefer to use your mind and intellect rather than force or via obvious means.',
          'reversed':
              'The Reversed meaning of the card means excess use of intellect with little success on an outcome, to surrender, or to have little care on solving a problem. The questioner needs to break away from ingrained habits or ways to approach problems.',
        },
        8: {
          'upright':
              'Ever been in a situation where you\'re afraid to say anything, so afraid that you second guess yourself, end up saying nothing, tying yourself in knots? But speaking up is going to get you cut to ribbons? That\'s this card. The Querent must have the strength to endure the cuts or they will stay trapped. They must move, for the longer they let the situation continue, the worse it will get.',
          'reversed': '???',
        },
        9: {
          'upright':
              'This card can represent being plagued by fear, guilt, doubt, and worries that are to a large extent, unfounded. Chances are the person in question is dealing with a problematic situation or a difficult decision, but his or her worst fear is unlikely to materialize.',
          'reversed': '???',
        },
        10: {
          'upright':
              'In the upright or positive light, the ten of swords represents destruction, being pinned down by a multitude of things or situations.',
          'reversed':
              'In the reversed state, the card indicates a troubling situation that will continue for a significant amount of time. The card suggests that the subject should not despair in difficult times, to avoid ruining future prospects for success.',
        },
        11: {
          'upright': '???',
          'reversed': '???',
        },
        12: {
          'upright':
              'The Knight of Swords is often taken to represent a confident and articulate young man, who may act impulsively. The problem is that this Knight, though visionary, is unrealistic. He fights bravely, but foolishly.',
          'reversed':
              'A reversed Knight of Swords is also a warning that an intended path would be a terrible mistake, or more precisely, that reconsidering your actions would be a wise decision.',
        },
        13: {
          'upright':
              'The Queen of Swords traditionally corresponds to the roles of widow, crone, and divorcée. She is seen to have very high standards and can be highly critical of herself and others.',
          'reversed': '???',
        },
        14: {
          'upright':
              'The King of Swords card from the Minor Arcana is often used to depict a mature man with sound intellectual understanding and reasoning. This card depicts a man who is strong-hearted, decisive, and intellectually oriented.',
          'reversed': '???',
        },
      },
    },
  },
};

final displayNames = {
  1: 'Ace',
  11: 'Page',
  12: 'Knight',
  13: 'Queen',
  14: 'King',
};

// TODO(mjcastner): Implement proper StatefulWidget for TarotCard.
class TarotCard extends StatelessWidget {
  String name;
  int number;
  String description;
  String arcana;
  String suit;
  String suitDescription;
  AssetImage image;
  bool reversed;
  bool flippable;
  bool startFlipped;

  TarotCard(
    this.arcana,
    this.number, {
    this.suit,
    this.flippable = true,
    this.startFlipped = true,
  }) {
    var cardInfo;
    var arcanaInfo = tarotArcana[this.arcana.toLowerCase()];
    this.reversed = Random().nextBool();

    switch (this.arcana) {
      case 'minor':
        {
          if (this.suit == null) {
            this.suit = arcanaInfo.keys
                .elementAt(Random().nextInt(arcanaInfo.keys.length));
          } else {
            this.suit = this.suit.toLowerCase();
          }
          cardInfo = arcanaInfo[this.suit]['card_text'][this.number];
          this.name =
              '${displayNames[this.number] ?? this.number} of ${StringUtils.capitalize(this.suit)}';
          this.image = AssetImage(arcanaInfo[this.suit]['image']);
          this.suitDescription = arcanaInfo['description'];
          if (this.reversed) {
            this.description = cardInfo['reversed'];
          } else {
            this.description = cardInfo['upright'];
          }
        }
        break;
      case 'major':
        {
          MapEntry cardInfo = arcanaInfo.entries.elementAt(this.number);
          this.name = StringUtils.capitalize(cardInfo.key, allWords: true);
          this.image = AssetImage(cardInfo.value['image']);
          if (this.reversed) {
            this.description = cardInfo.value['description']['reversed'];
          } else {
            this.description = cardInfo.value['description']['upright'];
          }
        }
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    // Find the single character descriptor per card (e.g. 9, 10, K, Q).
    String displayNumber;
    if (displayNames[this.number] != null &&
        this.arcana.toLowerCase() == 'minor') {
      displayNumber = displayNames[this.number].characters.first;
    } else {
      displayNumber = this.number.toString();
    }

    Widget cardFront = Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: this.image,
        ),
      ),
      height: 300,
      width: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                padding: EdgeInsets.all(10),
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: BorderedText(
                    strokeWidth: 1,
                    strokeColor: Colors.black,
                    child: Text(
                      displayNumber,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                padding: EdgeInsets.all(10),
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: this.reversed ? Icon(Icons.refresh) : null,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.03,
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: IconButton(
                    onPressed: () {
                      print('${this.name} - ${this.description}');
                      MotionToast.info(description: Text(this.description))
                          .show(context);
                    },
                    icon: Icon(Icons.info),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );

    Widget cardBack = Container(
      height: 300,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('images/back.jpeg'),
        ),
      ),
    );

    if (this.startFlipped) {
      return FlipCard(
        front: cardBack,
        back: cardFront,
        flipOnTouch: this.flippable,
      );
    } else {
      return FlipCard(
        front: cardFront,
        back: cardBack,
        flipOnTouch: this.flippable,
      );
    }
  }
}

class TarotDeck {
  List<TarotCard> deck = [];
  bool flippable;
  bool startFlipped;

  TarotDeck({
    this.flippable = true,
    this.startFlipped = true,
  }) {
    var minorArcana = [for (var i = 1; i <= 14; i++) i];
    tarotArcana['minor'].keys.forEach((suit) {
      minorArcana.forEach((element) {
        deck.add(TarotCard(
          'minor',
          element,
          suit: suit,
          flippable: this.flippable,
          startFlipped: this.startFlipped,
        ));
      });
    });

    var majorArcana = [for (var i = 0; i <= 21; i++) i];
    majorArcana.forEach((element) {
      deck.add(TarotCard(
        'major',
        element,
        flippable: this.flippable,
        startFlipped: this.startFlipped,
      ));
    });

    this.deck.shuffle();
  }

  List<TarotCard> draw(int numCards) {
    List<TarotCard> drawnCards = [];
    for (int i = 1; i <= numCards; i++) {
      drawnCards.add(deck.removeLast());
    }
    return drawnCards;
  }
}

class TarotSpread extends StatelessWidget {
  String name;
  List<int> rows;
  Column spreadWidget;
  bool flippable;
  bool startFlipped;

  TarotSpread({
    @required this.name,
    @required this.rows,
    this.flippable = true,
    this.startFlipped = true,
  }) {
    var tempDeck = TarotDeck(
      flippable: this.flippable,
      startFlipped: this.startFlipped,
    );
    spreadWidget = Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [],
    );
    rows.forEach((cardCount) {
      spreadWidget.children.add(Padding(
        padding: EdgeInsets.only(bottom: 25),
      ));
      spreadWidget.children.add(Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: addPadding(tempDeck.draw(cardCount)),
      ));
      spreadWidget.children.add(Padding(
        padding: EdgeInsets.only(bottom: 25),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.contain,
      child: spreadWidget,
    );
  }

  List addPadding(List<Widget> unpaddedWidgets, {double padding = 15}) {
    List<Widget> paddedWidgets = [];
    paddedWidgets.add(Padding(
      padding: EdgeInsets.all(padding),
    ));
    unpaddedWidgets.forEach((element) {
      paddedWidgets.add(element);
      paddedWidgets.add(Padding(
        padding: EdgeInsets.all(padding),
      ));
    });
    return paddedWidgets;
  }
}
