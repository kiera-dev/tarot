import 'dart:math';

import 'package:flutter/material.dart';

// void main() {
//   var coolDeck = TarotDeck();
//   coolDeck.deck.forEach((element) {
//     print(
//         '[${element.number}] (${element.arcana}) ${element.name} {reversed: ${element.reversed}}');
//   });

//   print('\n\n');
//   print(coolDeck.deck.length);
//   var cards = coolDeck.draw(3);
//   cards.forEach((element) {
//     print('I drew: ${element.name} <${element.reversed}>');
//   });
//   print(coolDeck.deck.length);
// }

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

class TarotCard extends Card {
  String name;
  int number;
  String description;
  String arcana;
  bool reversed;

  TarotCard(this.name, this.description) {
    this.reversed = Random().nextBool();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'images/the_fool.jpg',
            ),
          ),
        ),
        constraints: BoxConstraints(
          minHeight: 150,
          minWidth: 100,
          maxHeight: 900,
          maxWidth: 600,
        ),
      ),
    );
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
