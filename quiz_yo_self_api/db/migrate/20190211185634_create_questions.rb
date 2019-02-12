class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :description
      t.boolean :multiple_choice
      t.integer :answer_ids, array: true
      t.integer :timed_value

      t.timestamps
    end
  end
end
