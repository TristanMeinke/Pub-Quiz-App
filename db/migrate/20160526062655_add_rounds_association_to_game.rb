class AddRoundsAssociationToGame < ActiveRecord::Migration
  def change
  		add_column :rounds, :game_id, :integer
  		add_index 'rounds', ['game_id'], :name => 'index_game_id'
  end
end
