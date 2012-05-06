class IlliniController < ApplicationController 
  
  def index
    @illini = FootballTeam.all 
  end
  
 def destroy 
    team_id = params['id']
    @illinis = FootballTeam.find_by_id(team_id)
    @illinis.destroy
    redirect_to 'http://localhost:3000/illinifootball/home'
  end
  
  def show 
    team_id = params['id']
    @illinis = FootballTeam.find_by_id(team_id)
  end
  
  def new
  end
  
  def edit 
     team_id = params['id']
    @illinis = FootballTeam.find_by_id(team_id)
  end
  
  def update
     team_id = params['id']
      @illinis = FootballTeam.find_by_id(team_id)
      @illinis.team = params[:team]
      @illinis.wins = params[:wins]
      @illinis.losses = params[:losses]
      @illinis.save
      
      redirect_to "http://localhost:3000/illinifootball/home"
  
  end
  
  
  def create 
    new_team = FootballTeam.new(:team => params['team'], :wins => params['wins'], :losses => params['losses'])
    new_team.save
    
    redirect_to 'http://localhost:3000/illinifootball/home'
  end
  
end
