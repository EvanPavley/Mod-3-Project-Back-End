class RemoveCorrectFromQuestions < ActiveRecord::Migration[5.2]
  def change
    remove_column :questions, :correct, :boolean
  end
end
