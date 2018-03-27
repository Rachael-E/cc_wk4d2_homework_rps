require ('sinatra')
require ('sinatra/contrib/all')

require_relative ('./models/game')

get '/' do
  erb(:welcome)
end

get "/game/:hand1/:hand2" do

  game = Game.new()
  @game_result = game.what_wins(params[:hand1], params[:hand2])
  @player_who_won = game.winner
  erb(:result)


end
