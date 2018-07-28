void main(List<String> args) {
  var deck = new Deck();

  print("here's the cards");
  deck.cards.forEach((card) => 
    print("${card.rank} of ${card.suit}")
  );
}

class Deck {
  List<Card> cards = [];

  Deck() {
    var ranks = ['Ace', 'Two', 'Three', 'Four', 'Five'];
    var suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades'];

    for (var suit in suits) {
      for(var rank in ranks) {
        var card = new Card(suit, rank);
        this.cards.add(card);
      }
    }
  }
  
}

class Card {
  String suit;
  String rank;

  Card(this.suit, this.rank);
}