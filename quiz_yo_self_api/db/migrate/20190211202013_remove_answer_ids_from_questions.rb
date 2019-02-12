class RemoveAnswerIdsFromQuestions < ActiveRecord::Migration[5.2]
  def change
    remove_column :questions, :answer_ids, :array
  end
end
