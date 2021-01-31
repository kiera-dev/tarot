import 'dart:math';

import 'package:flutter/material.dart';

final majorArcana = <String, Map>{
  'The Fool': {
    'description':
        "The Fool is everyone - including you and me. Each step he takes on his journey feels like stepping into a brave new world. Ultimately, the journey will change him. But as the card shows, he's a trustworthy lad whose tireless hope drives him toward his goal.",
    'image': 'images/the_fool.jpg',
  },
  'The Magician': {
    'description':
        'The Magician is the card of self-confidence and adapting to situations through intellect and sheer will. The Magician is a schemer who always has one last trick up his sleeve, who despite everything manages to stay afloat and remain in control of his own destiny.',
    'image': 'images/the_magician.jpg',
  },
  'The High Priestess': {
    'description':
        'The High Priestess is a card of mystery. It shows how all our secrets hang by a delicate thread and the struggle between common sense and intuition. The High Priestess symbolizes the cold, calm waters as well as the mysteries hidden in their depths.',
    'image': 'images/the_high_priestess.jpg',
  },
  'The Empress': {
    'description':
        'The empress is a card of femininity and motherhood. She is authoritative, knows what she wants, and exhibits refinement and sensuousness. The Empress symbolizes creativity and growth, and instructs us not to dismiss our unconscious impulses, but to trust our intuition.',
    'image': 'images/the_empress.jpg',
  },
  'The Emperor': {
    'description':
        'The Emperor represents patriarchal control and is pleased with the authority and power he possesses to shape the future. The Emperor makes the rules and enforces them for the common good. But prestige has its dark sides – the Emperor is dominating and ruthless and will climb over a mountain of bodies to achieve his aim.',
    'image': 'images/the_emperor.jpg',
  },
  'The Hierophant': {
    'description':
        'The Hierophant symbolizes a respect for tradition. It represents one who tries to maintain the established order, even though their very character is shaped by it. The Hierophant places his faith in institutions – for the alternative is pure chaos. Only by placing his faith in order can he draw strength.',
    'image': 'images/the_hierophant.jpg',
  },
  'The Lovers': {
    'description':
        'The Lovers is the card of dichotomies. It points to the contradictions that clash within each of us and of the challenge of striking a balance between extremes. The Lovers is also the card of dilemmas, like The Fool who stands at the crossroads, unable to make his choice.',
    'image': 'images/the_lovers.jpg',
  },
  'The Chariot': {
    'description':
        'The Chariot is always charging ahead despite being pulled by its steeds in opposite directions. The rider who steers it constantly reins in the light and dark sides of the soul with the help of Reason. To ride in The Chariot is to experience highs and lows – ups and downs.',
    'image': 'images/the_chariot.jpg',
  },
  'Strength': {
    'description':
        "Strength is the card of resilience. It is associated with determination, bravery and internal struggle. One must have dedication in order to overcome obstacles and reach one's goal. Strength is about physical prowess and spiritual fortitude – the power that must be unleashed to achieve the impossible.",
    'image': 'images/strength.jpg',
  },
  'The Hermit': {
    'description':
        'The Hermit is a card of self-imposed isolation. It represents an escape from the hustle and bustle of the city, a turning away from constant newness toward Ye Olde ways. For the hermit, solitude is the road to the sublime – a road that is taken not with great bounds and strides, but with small, concentrated steps.',
    'image': 'images/the_hermit.jpg',
  },
  'Wheel of Fortune': {
    'description':
        "The Wheel of Fortune means that change is coming. One's destiny could turn out for the better or the worse, yet it also bears the promise of new possibilities. The Wheel reminds us that nobody remains at he top forever, but also that not every situation is hopeless.",
    'image': 'images/wheel_of_fortune.jpg',
  },
  'Justice': {
    'description':
        'Justice is the card of conflict resolution. It proclaims the need for order, to see through lies and deceit, and a return to the natural state of affairs. Justice implies a just sentence, but also due process.',
    'image': 'images/justice.jpg',
  },
  'The Hanged Man': {
    'description':
        "The Hanged Man is the card of sacrifice. It says that a price must be paid in order to achieve enlightenment. The Hanged Man's forsakenness opens the path for rebirth into a new life, though this path is wrought with pain suspended in time and ultimately ends in death.",
    'image': 'images/the_hanged_man.jpg',
  },
  'Death': {
    'description':
        'Death is the card of becoming. It signifies an imminent and difficult transition – the conclusion of one phase of life and the beginning of another. Inevitably, something gets lost during the transformation, but something else will rise and take its place.',
    'image': 'images/death.jpg',
  },
  'Temperance': {
    'description':
        'Temperance is the card of balance. It may symbolize self-restraint or the gradual shift toward a more mature state of equilibrium. Temperance is associated with being in control of oneself as well as the desire to achieve inner peace.',
    'image': 'images/temperance.jpg',
  },
  'The Devil': {
    'description':
        'The Devil is addiction, craving and passion. He brings fame and fortune, but at the price of losing oneself to a world of material distractions. The Devil lures unsuspecting souls into traps, but always grants them a choice. One can try their luck and take him up on his offer, but one should always know when to call quits.',
    'image': 'images/the_devil.png',
  },
  'The Tower': {
    'description':
        'The Tower is an omen of radical change, chaos and destruction. The lightning striking The Tower signifies a return to the old order that lies buried under the ruins, and a new order that will rise from it. It is a symbol of tragedy, apocalypse, and self-destruction.',
    'image': 'images/the_tower.jpg',
  },
  'The Star': {
    'description':
        'The Star is the card of hope. In the darkest of nights there is a light that shines the path to home. The Star is inspiration, motivation and gives us strength to move forward.',
    'image': 'images/the_star.jpg',
  },
  'The Moon': {
    'description':
        "The Moon reminds us that reality is not always what it seems at first glance. In a world of appearances and illusions, the best course is often charted by one's own intuition. The Moon is also the card of dreams, desires, and of course, sleep – Death's nightly ritual.",
    'image': 'images/the_moon.jpg',
  },
  'The Sun': {
    'description':
        "The Sun symbolizes success. It is a card of freedom, renewal and a bright future that lies ahead. The Sun also represents truth, for its light will always pull back the curtain of shadow that hides the world's secrets. It is also represents greatness and splendor.",
    'image': 'images/the_sun.jpg',
  },
  'Judgement': {
    'description':
        'Judgement is the card of renewal. The angel blowing into the horn heralds resurrection and liberation. This card foretells an important change that will result in healing or fulfillment. It is also a symbol of self-worth.',
    'image': 'images/judgement.png',
  },
  'The World': {
    'description':
        "The World lies at the end of The Fool's long and winding journey. Wiser and more world-weary than he started out, the Fool faces a moment of reckoning. Some of us accept where our journey has led us to, while others embark on a new challenge. One thing in this World is certain – you can't have it all.",
    'image': 'images/the_world.jpg',
  },
};

randomKey(Map map) => map.keys.elementAt(new Random().nextInt(map.length));

class TarotCard extends StatelessWidget {
  String name;
  String description;
  String image;

  TarotCard getRandom() {
    var randomCard = TarotCard();
    randomCard.name = randomKey(majorArcana);

    var randomCardData = majorArcana[randomCard.name];
    randomCard.description = randomCardData['description'];
    randomCard.image = randomCardData['image'];

    return randomCard;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ListTile(
              title: Text(this.name),
              tileColor: Colors.black87,
              subtitle: Text(
                this.description,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(this.image),
            fit: BoxFit.cover,
          ),
        ),
        width: 350.0,
        height: 500.0,
      ),
    );
  }
}
