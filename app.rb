require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base

  enable :sessions

  get '/testing' do
    'Testing Infrustructure working!'
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/attack' do
    $game.attack
    redirect './attack'
  end

  get '/attack' do
    erb(:attack)
    #$game.switch_turn
  end

  get '/switch_players' do
    if $game.opponent.hit_points == 0
      redirect '/lose'
    else
      $game.switch_turn
      redirect '/play'
    end
  end

  get '/lose' do
    "KARLA LOSES"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
