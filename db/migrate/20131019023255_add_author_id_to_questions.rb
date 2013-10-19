class AddAuthorIdToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :auhtor_id, :integer
  end
end
