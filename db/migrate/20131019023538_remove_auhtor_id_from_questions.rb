class RemoveAuhtorIdFromQuestions < ActiveRecord::Migration
  def up
    remove_column :questions, :auhtor_id
  end

  def down
    add_column :questions, :auhtor_id, :integer
  end
end
