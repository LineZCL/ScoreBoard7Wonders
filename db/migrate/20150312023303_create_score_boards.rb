class CreateScoreBoards < ActiveRecord::Migration
  def change
    create_table :score_boards do |t|
      t.references :player, index: true
      t.references :game, index: true
      t.integer :final_score
      t.boolean :winner
    end
    add_foreign_key :score_boards, :players
    add_foreign_key :score_boards, :games
  end
end
