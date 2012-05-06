class CreateFootballTeams < ActiveRecord::Migration
  def change
    create_table :football_teams do |t|
      t.string :team
      t.integer :wins
      t.integer :losses

      t.timestamps
    end
  end
end
