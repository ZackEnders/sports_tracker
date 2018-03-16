class LeaguesController < ApplicationController

  def index

  end

  def show

  end

  def season
    @divisions = $msf.msf_get_data(params[:league],params[:season], 'division_team_standings', 'json')["divisionteamstandings"]["division"]
    @atlantic = @divisions.detect {|d| d["@name"] == "Eastern/Atlantic"}
    @central = @divisions.detect {|d| d["@name"] == "Eastern/Central"}
    @southeast = @divisions.detect {|d| d["@name"] == "Eastern/Southeast"}
    @northwest = @divisions.detect {|d| d["@name"] == "Western/Northwest"}
    @pacific = @divisions.detect {|d| d["@name"] == "Western/Pacific"}
    @southwest = @divisions.detect {|d| d["@name"] == "Western/Southwest"}


  end

  def teamseason
  	# gamelog
  	@games = $msf.msf_get_data(params[:league], '2016-2017-regular', 'team_gamelogs', 'json', 'team' => params[:Abbreviation])['teamgamelogs']['gamelogs']
  end

end
