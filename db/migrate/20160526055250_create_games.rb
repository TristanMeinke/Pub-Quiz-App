class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.datetime :datePlayed

      t.timestamps null: false
    end
  end
end
