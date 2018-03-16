Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: 'league#index'

get '/:league/scoreboard/:date', to: 'games#scoreboard'

get '/:league/boxscore/:gameid', to: 'games#boxscore' 

get '/:league/schedule/:Abbreviation', to: "leagues#teamseason"

get '/:league/:season', to:"leagues#season"


end
