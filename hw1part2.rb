# -*- encoding : utf-8 -*-
class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

#game = [ ["Armando", "P"], ["Dave", "S"]]
# R beats S, S beats P, P beats R

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  raise NoSuchStrategyError unless game.all?{|elt| elt[1] =~ /^[prs]$/i}
  
  case game.map{|elt| elt[1].upcase}
  	when ["R", "S"] then game[0]
  	when ["S", "P"] then game[0]
  	when ["P", "R"] then game[0]
  	when ["R", "R"], ["P", "P"], ["S", "S"] then game[0]
  	else game[1]
  end
end

tournament = 
[
    [
        [ ["Armando", "P"], ["Dave", "S"] ],
        [ ["Richard", "R"],  ["Michael", "S"] ],
    ],
    [
        [ ["Allen", "S"], ["Omer", "P"] ],
        [ ["David E.", "R"], ["Richard X.", "P"] ]
    ]
]

def rps_tournament_winner(tournament)
  return rps_game_winner(tournament) if tournament[0][0].kind_of? String
  rps_tournament_winner [rps_tournament_winner(tournament[0]), rps_tournament_winner(tournament[1])]
end

#p rps_tournament_winner(tournament)
