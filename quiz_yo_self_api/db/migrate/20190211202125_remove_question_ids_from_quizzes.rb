class RemoveQuestionIdsFromQuizzes < ActiveRecord::Migration[5.2]
  def change
    remove_column :quizzes, :question_ids, :array
  end
end
