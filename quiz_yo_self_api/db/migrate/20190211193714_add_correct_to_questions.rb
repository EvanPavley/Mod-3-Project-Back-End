class AddCorrectToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :correct, :boolean
  end
end
