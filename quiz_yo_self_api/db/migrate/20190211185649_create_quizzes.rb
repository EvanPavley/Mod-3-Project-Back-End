class CreateQuizzes < ActiveRecord::Migration[5.2]
  def change
    create_table :quizzes do |t|
      t.string :name
      t.string :image
      t.integer :question_ids, array: true

      t.timestamps
    end
  end
end
