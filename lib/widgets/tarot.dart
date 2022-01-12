import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final minorArcanum = <String, Map>{
  'pentacles': {
    'description':
        'Pentacles are coins and represent earthly circumstances like money, family and health. Historically the Pentacles represent the working class.',
    'image': 'images/pentacles.jpeg',
    'card_text': {
      1: 'One is the loneliest number that you ever knew.',
      2: 'Two can be as bad as one.',
      3: 'Three is fine.',
      4: 'Four is sublime.',
      5: 'Five alive.',
      6: 'Six something something sticks.',
      7: 'Seven ate nine.',
      8: 'Eight\'s involvement with cannibalism is unclear.',
      9: 'Nine RIP.',
      10: 'Ten!',
    },
  },
  'cups': {
    'description':
        'The flowing of emotions, internal and external as well as relationships.',
    'image': 'images/cups.jpeg',
    'card_text': {
      1: 'One is the loneliest number that you ever knew.',
      2: 'Two can be as bad as one.',
      3: 'Three is fine.',
      4: 'Four is sublime.',
      5: 'Five alive.',
      6: 'Six something something sticks.',
      7: 'Seven ate nine.',
      8: 'Eight\'s involvement with cannibalism is unclear.',
      9: 'Nine RIP.',
      10: 'Ten!',
    },
  },
  'wands': {
    'description':
        'The symbol of moving up in the world; no longer having to worry about day-to-day life and being able to focus long-term on where you will spend your time and energy. Wands represent personal and career growth.',
    'image': 'images/wands.jpeg',
    'card_text': {
      1: 'One is the loneliest number that you ever knew.',
      2: 'Two can be as bad as one.',
      3: 'Three is fine.',
      4: 'Four is sublime.',
      5: 'Five alive.',
      6: 'Six something something sticks.',
      7: 'Seven ate nine.',
      8: 'Eight\'s involvement with cannibalism is unclear.',
      9: 'Nine RIP.',
      10: 'Ten!',
    },
  },
  'swords': {
    'description':
        'The swords contain great change and swift movement. Life purpose and spirituality are two of the core principles of swords. The swords are representaative of the ruling class.',
    'image': 'images/swords.jpeg',
    'card_text': {
      1: 'One is the loneliest number that you ever knew.',
      2: 'Two can be as bad as one.',
      3: 'Three is fine.',
      4: 'Four is sublime.',
      5: 'Five alive.',
      6: 'Six something something sticks.',
      7: 'Seven ate nine.',
      8: 'Eight\'s involvement with cannibalism is unclear.',
      9: 'Nine RIP.',
      10: 'Ten!',
    },
  },
};

var minorArcana = {
  'Pentacles':
      'Pentacles are coins and represent earthly circumstances like money, family and health. Historically the Pentacles represent the working class.',
  'Cups':
      'The flowing of emotions, internal and external as well as relationships.',
  'Wands':
      'The symbol of moving up in the world; no longer having to worry about day-to-day life and being able to focus long-term on where you will spend your time and energy. Wands represent personal and career growth.',
  'Swords':
      'The swords contain great change and swift movement. Life purpose and spirituality are two of the core principles of swords. The swords are representaative of the ruling class.',
};

var majorArcanum = <String, Map>{
  'the fool': {
    'description':
        "The Fool is everyone - including you and me. Each step he takes on his journey feels like stepping into a brave new world. Ultimately, the journey will change him. But as the card shows, he's a trustworthy lad whose tireless hope drives him toward his goal.",
    'image': 'images/the_fool.jpg',
  },
  'the magician': {
    'description':
        'The Magician is the card of self-confidence and adapting to situations through intellect and sheer will. The Magician is a schemer who always has one last trick up his sleeve, who despite everything manages to stay afloat and remain in control of his own destiny.',
    'image': 'images/the_magician.jpg',
  },
  'the high priestess': {
    'description':
        'The High Priestess is a card of mystery. It shows how all our secrets hang by a delicate thread and the struggle between common sense and intuition. The High Priestess symbolizes the cold, calm waters as well as the mysteries hidden in their depths.',
    'image': 'images/the_high_priestess.jpg',
  },
  'the empress': {
    'description':
        'The empress is a card of femininity and motherhood. She is authoritative, knows what she wants, and exhibits refinement and sensuousness. The Empress symbolizes creativity and growth, and instructs us not to dismiss our unconscious impulses, but to trust our intuition.',
    'image': 'images/the_empress.jpg',
  },
  'the emperor': {
    'description':
        'The Emperor represents patriarchal control and is pleased with the authority and power he possesses to shape the future. The Emperor makes the rules and enforces them for the common good. But prestige has its dark sides – the Emperor is dominating and ruthless and will climb over a mountain of bodies to achieve his aim.',
    'image': 'images/the_emperor.jpg',
  },
  'the hierophant': {
    'description':
        'The Hierophant symbolizes a respect for tradition. It represents one who tries to maintain the established order, even though their very character is shaped by it. The Hierophant places his faith in institutions – for the alternative is pure chaos. Only by placing his faith in order can he draw strength.',
    'image': 'images/the_hierophant.jpg',
  },
  'the lovers': {
    'description':
        'The Lovers is the card of dichotomies. It points to the contradictions that clash within each of us and of the challenge of striking a balance between extremes. The Lovers is also the card of dilemmas, like The Fool who stands at the crossroads, unable to make his choice.',
    'image': 'images/the_lovers.jpg',
  },
  'the chariot': {
    'description':
        'The Chariot is always charging ahead despite being pulled by its steeds in opposite directions. The rider who steers it constantly reins in the light and dark sides of the soul with the help of Reason. To ride in The Chariot is to experience highs and lows – ups and downs.',
    'image': 'images/the_chariot.jpg',
  },
  'strength': {
    'description':
        "Strength is the card of resilience. It is associated with determination, bravery and internal struggle. One must have dedication in order to overcome obstacles and reach one's goal. Strength is about physical prowess and spiritual fortitude – the power that must be unleashed to achieve the impossible.",
    'image': 'images/strength.jpg',
  },
  'the hermit': {
    'description':
        'The Hermit is a card of self-imposed isolation. It represents an escape from the hustle and bustle of the city, a turning away from constant newness toward Ye Olde ways. For the hermit, solitude is the road to the sublime – a road that is taken not with great bounds and strides, but with small, concentrated steps.',
    'image': 'images/the_hermit.jpg',
  },
  'wheel of fortune': {
    'description':
        "The Wheel of Fortune means that change is coming. One's destiny could turn out for the better or the worse, yet it also bears the promise of new possibilities. The Wheel reminds us that nobody remains at he top forever, but also that not every situation is hopeless.",
    'image': 'images/wheel_of_fortune.jpg',
  },
  'justice': {
    'description':
        'Justice is the card of conflict resolution. It proclaims the need for order, to see through lies and deceit, and a return to the natural state of affairs. Justice implies a just sentence, but also due process.',
    'image': 'images/justice.jpg',
  },
  'the hanged man': {
    'description':
        "The Hanged Man is the card of sacrifice. It says that a price must be paid in order to achieve enlightenment. The Hanged Man's forsakenness opens the path for rebirth into a new life, though this path is wrought with pain suspended in time and ultimately ends in death.",
    'image': 'images/the_hanged_man.jpg',
  },
  'death': {
    'description':
        'Death is the card of becoming. It signifies an imminent and difficult transition – the conclusion of one phase of life and the beginning of another. Inevitably, something gets lost during the transformation, but something else will rise and take its place.',
    'image': 'images/death.jpg',
  },
  'temperance': {
    'description':
        'Temperance is the card of balance. It may symbolize self-restraint or the gradual shift toward a more mature state of equilibrium. Temperance is associated with being in control of oneself as well as the desire to achieve inner peace.',
    'image': 'images/temperance.jpg',
  },
  'the devil': {
    'description':
        'The Devil is addiction, craving and passion. He brings fame and fortune, but at the price of losing oneself to a world of material distractions. The Devil lures unsuspecting souls into traps, but always grants them a choice. One can try their luck and take him up on his offer, but one should always know when to call quits.',
    'image': 'images/the_devil.jpg',
  },
  'the tower': {
    'description':
        'The Tower is an omen of radical change, chaos and destruction. The lightning striking The Tower signifies a return to the old order that lies buried under the ruins, and a new order that will rise from it. It is a symbol of tragedy, apocalypse, and self-destruction.',
    'image': 'images/the_tower.jpg',
  },
  'the star': {
    'description':
        'The Star is the card of hope. In the darkest of nights there is a light that shines the path to home. The Star is inspiration, motivation and gives us strength to move forward.',
    'image': 'images/the_star.jpg',
  },
  'the moon': {
    'description':
        "The Moon reminds us that reality is not always what it seems at first glance. In a world of appearances and illusions, the best course is often charted by one's own intuition. The Moon is also the card of dreams, desires, and of course, sleep – Death's nightly ritual.",
    'image': 'images/the_moon.jpg',
  },
  'the sun': {
    'description':
        "The Sun symbolizes success. It is a card of freedom, renewal and a bright future that lies ahead. The Sun also represents truth, for its light will always pull back the curtain of shadow that hides the world's secrets. It is also represents greatness and splendor.",
    'image': 'images/the_sun.jpg',
  },
  'judgement': {
    'description':
        'Judgement is the card of renewal. The angel blowing into the horn heralds resurrection and liberation. This card foretells an important change that will result in healing or fulfillment. It is also a symbol of self-worth.',
    'image': 'images/the_judgement.jpg',
  },
  'the world': {
    'description':
        "The World lies at the end of The Fool's long and winding journey. Wiser and more world-weary than he started out, the Fool faces a moment of reckoning. Some of us accept where our journey has led us to, while others embark on a new challenge. One thing in this World is certain – you can't have it all.",
    'image': 'images/the_world.jpg',
  },
};

var majorArcana = {
  'The Fool':
      "The Fool is everyone - including you and me. Each step he takes on his journey feels like stepping into a brave new world. Ultimately, the journey will change him. But as the card shows, he's a trustworthy lad whose tireless hope drives him toward his goal.",
  'The Magician':
      'The Magician is the card of self-confidence and adapting to situations through intellect and sheer will. The Magician is a schemer who always has one last trick up his sleeve, who despite everything manages to stay afloat and remain in control of his own destiny.',
  'The High Priestess':
      'The High Priestess is a card of mystery. It shows how all our secrets hang by a delicate thread and the struggle between common sense and intuition. The High Priestess symbolizes the cold, calm waters as well as the mysteries hidden in their depths.',
  'The Empress':
      'The empress is a card of femininity and motherhood. She is authoritative, knows what she wants, and exhibits refinement and sensuousness. The Empress symbolizes creativity and growth, and instructs us not to dismiss our unconscious impulses, but to trust our intuition.',
  'The Emperor':
      'The Emperor represents patriarchal control and is pleased with the authority and power he possesses to shape the future. The Emperor makes the rules and enforces them for the common good. But prestige has its dark sides – the Emperor is dominating and ruthless and will climb over a mountain of bodies to achieve his aim.',
  'The Hierophant':
      'The Hierophant symbolizes a respect for tradition. It represents one who tries to maintain the established order, even though their very character is shaped by it. The Hierophant places his faith in institutions – for the alternative is pure chaos. Only by placing his faith in order can he draw strength.',
  'The Lovers':
      'The Lovers is the card of dichotomies. It points to the contradictions that clash within each of us and of the challenge of striking a balance between extremes. The Lovers is also the card of dilemmas, like The Fool who stands at the crossroads, unable to make his choice.',
  'The Chariot':
      'The Chariot is always charging ahead despite being pulled by its steeds in opposite directions. The rider who steers it constantly reins in the light and dark sides of the soul with the help of Reason. To ride in The Chariot is to experience highs and lows – ups and downs.',
  'Strength':
      "Strength is the card of resilience. It is associated with determination, bravery and internal struggle. One must have dedication in order to overcome obstacles and reach one's goal. Strength is about physical prowess and spiritual fortitude – the power that must be unleashed to achieve the impossible.",
  'The Hermit':
      'The Hermit is a card of self-imposed isolation. It represents an escape from the hustle and bustle of the city, a turning away from constant newness toward Ye Olde ways. For the hermit, solitude is the road to the sublime – a road that is taken not with great bounds and strides, but with small, concentrated steps.',
  'Wheel of Fortune':
      "The Wheel of Fortune means that change is coming. One's destiny could turn out for the better or the worse, yet it also bears the promise of new possibilities. The Wheel reminds us that nobody remains at he top forever, but also that not every situation is hopeless.",
  'Justice':
      'Justice is the card of conflict resolution. It proclaims the need for order, to see through lies and deceit, and a return to the natural state of affairs. Justice implies a just sentence, but also due process.',
  'The Hanged Man':
      "The Hanged Man is the card of sacrifice. It says that a price must be paid in order to achieve enlightenment. The Hanged Man's forsakenness opens the path for rebirth into a new life, though this path is wrought with pain suspended in time and ultimately ends in death.",
  'Death':
      'Death is the card of becoming. It signifies an imminent and difficult transition – the conclusion of one phase of life and the beginning of another. Inevitably, something gets lost during the transformation, but something else will rise and take its place.',
  'Temperance':
      'Temperance is the card of balance. It may symbolize self-restraint or the gradual shift toward a more mature state of equilibrium. Temperance is associated with being in control of oneself as well as the desire to achieve inner peace.',
  'The Devil':
      'The Devil is addiction, craving and passion. He brings fame and fortune, but at the price of losing oneself to a world of material distractions. The Devil lures unsuspecting souls into traps, but always grants them a choice. One can try their luck and take him up on his offer, but one should always know when to call quits.',
  'The Tower':
      'The Tower is an omen of radical change, chaos and destruction. The lightning striking The Tower signifies a return to the old order that lies buried under the ruins, and a new order that will rise from it. It is a symbol of tragedy, apocalypse, and self-destruction.',
  'The Star':
      'The Star is the card of hope. In the darkest of nights there is a light that shines the path to home. The Star is inspiration, motivation and gives us strength to move forward.',
  'The Moon':
      "The Moon reminds us that reality is not always what it seems at first glance. In a world of appearances and illusions, the best course is often charted by one's own intuition. The Moon is also the card of dreams, desires, and of course, sleep – Death's nightly ritual.",
  'The Sun':
      "The Sun symbolizes success. It is a card of freedom, renewal and a bright future that lies ahead. The Sun also represents truth, for its light will always pull back the curtain of shadow that hides the world's secrets. It is also represents greatness and splendor.",
  'Judgement':
      'Judgement is the card of renewal. The angel blowing into the horn heralds resurrection and liberation. This card foretells an important change that will result in healing or fulfillment. It is also a symbol of self-worth.',
  'The World':
      "The World lies at the end of The Fool's long and winding journey. Wiser and more world-weary than he started out, the Fool faces a moment of reckoning. Some of us accept where our journey has led us to, while others embark on a new challenge. One thing in this World is certain – you can't have it all.",
};

class PerotCard extends StatelessWidget {
  String name;
  int number;
  String description;
  String arcana;
  String suit;
  String suit_description;
  AssetImage image;
  bool reversed;

  PerotCard(this.name, this.arcana) {
    this.reversed = Random().nextBool();
    switch (this.arcana.toLowerCase()) {
      case 'major':
        {
          this.description =
              majorArcanum[this.name.toLowerCase()]['description'];
          this.image =
              AssetImage(majorArcanum[this.name.toLowerCase()]['image']);
        }
        break;
      case 'minor':
        {
          this.number = int.parse(this.name.characters.first);
          minorArcanum.entries.forEach((suit) {
            if (this.name.toLowerCase().contains(suit.key)) {
              this.suit = suit.key;
              this.description = suit.value['card_text'][this.number];
              this.suit_description = suit.value['description'];
              this.image = AssetImage(suit.value['image']);
            }
          });
        }
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Card(
        elevation: 5,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 30),
                      height: MediaQuery.of(context).size.height * 0.10,
                      child: FittedBox(
                        fit: BoxFit.fitHeight,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          this.number.toString(),
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.20,
                      color: Colors.black54,
                      child: Text('Hey'),
                    ),
                  )
                ],
              ),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: this.image,
            ),
          ),
        ),
      ),
    );
  }
}

class TarotCard extends StatelessWidget {
  String name;
  int number;
  String description;
  String arcana;
  String suit;
  bool reversed;

  TarotCard(this.name, this.description) {
    this.reversed = Random().nextBool();
  }

  @override
  Widget build(BuildContext context) {
    if (this.arcana == 'Major') {
      String imageUrl =
          'images/' + this.name.toLowerCase().replaceAll(' ', '_') + '.jpg';
      return AspectRatio(
        aspectRatio: 2 / 3,
        child: Card(
          elevation: 2,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(imageUrl),
              ),
            ),
            height: 300,
            width: 200,
          ),
        ),
      );
    } else {
      String suitIcon;
      switch (this.suit) {
        case 'Swords':
          {
            suitIcon = 'images/swords.jpeg';
          }
          break;
        case 'Wands':
          {
            suitIcon = 'images/wands.jpeg';
          }
          break;
        case 'Cups':
          {
            suitIcon = 'images/cups.jpeg';
          }
          break;
        case 'Pentacles':
          {
            suitIcon = 'images/pentacles.jpeg';
          }
          break;
        default:
      }
      return AspectRatio(
        aspectRatio: 2 / 3,
        child: Card(
          elevation: 2,
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  suitIcon,
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      this.number.toString(),
                      style: GoogleFonts.roboto(),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      this.number.toString(),
                      style: GoogleFonts.roboto(),
                    ),
                  ],
                ),
              ],
            ),
            height: 300,
            width: 200,
          ),
        ),
      );
    }
  }
}

class TarotDeck {
  List<TarotCard> deck = [];

  TarotDeck() {
    majorArcana.entries.forEach((arcana) {
      TarotCard majorArcanaCard = TarotCard(arcana.key, arcana.value);
      majorArcanaCard.number = majorArcana.keys.toList().indexOf(arcana.key);
      majorArcanaCard.arcana = 'Major';
      deck.add(majorArcanaCard);
    });

    minorArcana.entries.forEach((arcana) {
      for (int i = 1; i <= 10; i++) {
        TarotCard minorArcanaCard =
            TarotCard('$i of ${arcana.key.toString()}', 'Minor arcana card.');
        minorArcanaCard.number = i;
        minorArcanaCard.arcana = 'Minor';
        minorArcanaCard.suit = arcana.key.toString();
        deck.add(minorArcanaCard);
      }
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
  String type;
  TarotDeck deck = TarotDeck();

  TarotSpread(this.type);

  @override
  Widget build(BuildContext context) {
    Color widgetColor = Colors.red;
    Widget spreadWidget;

    switch (this.type) {
      case 'One':
        {
          widgetColor = Colors.yellow;
          spreadWidget = Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: this.deck.draw(1).first,
              ),
            ],
          );
        }
        break;
      case 'Three':
        {
          widgetColor = Colors.blue;
        }
        break;
      case 'Elemental':
        {
          widgetColor = Colors.green;
        }
        break;
      case 'Week':
        {
          widgetColor = Colors.red;
        }
        break;
      default:
        {
          widgetColor = Colors.grey;
        }
        break;
    }

    return Container(
      color: widgetColor,
      child: spreadWidget,
    );
  }
}
