#todo: refactor to have a game beneath the outer blackjack model
class window.App extends Backbone.Model

  initialize: ->
    @set 'deck', deck = new Deck()
    @set 'playerHand', deck.dealPlayer()
    @set 'dealerHand', deck.dealDealer()
    @on 'switchControl', -> 
      dealerHand = @get 'dealerHand'
      console.log('fuckkkkkkkkk')




    playerHand = @get 'playerHand'
    playerHand.hasBlackJack()


    console.log(playerHand.scores())

  compareScores: ->
    playerHand = @get 'playerHand'
    dealerHand = @get 'dealerHand'
    
    # alert('you suck!') if dealerHand.scores()[0] < playerHand.scores()[0] 

    console.log(playerHand.scores())