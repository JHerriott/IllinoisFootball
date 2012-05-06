IllinoisFootball::Application.routes.draw do

  get "illinifootball/home", :controller => "illini", :action => "index"
  
  get "illinifootball/home/new", :controller => "illini", :action => "new", :as => :new_illini_team
  post "illinifootball/home/create", :controller => "illini", :action => "create" 
  
  get "illinifootball/home/:id", :controller => "illini", :action => "show", :as => :illini_team
  delete "illinifootball/home/:id", :controller => "illini", :action => "destroy"
  
  get "illinifootball/home/:id/edit", :controller => "illini", :action => "edit", :as => :illini_team_edit
  put "illinifootball/home/:id", :controller => "illini", :action => "update"


end
