class AddQuestionsAssociationToRound < ActiveRecord::Migration
  def change
  		add_column :questions, :round_id, :integer
  		add_index 'questions', ['round_id'], :name => 'index_round_id'
  end
end
