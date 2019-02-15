class RemoveImageFromQuizzes < ActiveRecord::Migration[5.2]
  def change
    remove_column :quizzes, :image, :string
  end
end
