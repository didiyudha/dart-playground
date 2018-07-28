void main(List<String> args) {
  var deck = new Deck();
  deck.shuffle();

  // print(deck);

  var spadesCards = deck.cardsWithSuit('Spades');
  print(spadesCards);
}

class Deck {
  List<Card> cards = [];

  Deck() {
    var ranks = ['Ace', 'Two', 'Three', 'Four', 'Five'];
    var suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades'];

    for (var suit in suits) {
      for(var rank in ranks) {
        var card = new Card(rank, suit);
        cards.add(card);
      }
    }
  }

  shuffle() {
    cards.shuffle();
  }

  cardsWithSuit(String suit) {
    return cards.where((card) => card.suit == suit);  
  }
  
  toString() {
    return cards.toString();
  }
}

class Card {
  String suit;
  String rank;

  Card(this.rank, this.suit);

  toString() {
    return "{rank: $rank, suit: $suit}";
  }
}