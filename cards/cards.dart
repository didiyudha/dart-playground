main(List<String> args) {
  var deck = new Deck();
  print(deck.toString());

  deck.suffle();
  print(deck.toString());

  var filterd = deck.cardsWithSuit(rank: "Ace", suit: "Diamonds");
  print(filterd.toString());

  var hand = deck.deal(5);
  print(hand.toString());
  print(deck.toString());

  deck.removeCard(rank: 'Three', suit: 'Diamonds');
  print(deck.toString());
}

class Deck {
List<Card> cards = [];

Deck() {
  var ranks = ['Ace', 'Two', 'Three', 'Four', 'Five'];
  var suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades'];

  for(var rank in ranks) {
      for (var suit in suits) {
        var card = new Card(rank: rank, suit: suit);
        cards.add(card);
      }
    }
  }

  suffle() {
    cards.shuffle();
  }

  cardsWithSuit({String rank, String suit}) {
    return cards.where((card) => (card.rank == rank) && (card.suit == suit));
  }

  deal(int handsize) {
    var hand = cards.sublist(0, handsize);
    cards = cards.sublist(handsize);
    return hand;
  }

  removeCard({String suit, String rank}) {
    cards.removeWhere((card) => (card.suit == suit) && (card.rank == rank));
  }

  toString(){
    return cards.toString();
  }
}

class Card {
  String rank;
  String suit;

  Card({this.rank, this.suit});

  toString() {
    return "{ rank: $rank, suit: $suit }";
  }
}