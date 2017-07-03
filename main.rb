require './game'
require './player'
require './question'

player1 = MathGame::Player.new 'Player 1'
player2 = MathGame::Player.new 'Player 2'

game = MathGame::Game.new player1, player2
game.start