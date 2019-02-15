class RemoveTimedValueFromQuestions < ActiveRecord::Migration[5.2]
  def change
    remove_column :questions, :timed_value, :integer
  end
end
