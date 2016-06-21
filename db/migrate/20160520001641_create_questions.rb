class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :questiontext
      t.text :answertext
      t.text :partialanswer
      t.text :notes
      t.integer :pointval
      t.integer :difficulty
      t.integer :partialpoints
      t.boolean :isanswered

      t.timestamps null: false
    end
  end
end
