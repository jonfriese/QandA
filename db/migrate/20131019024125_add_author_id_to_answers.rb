class AddAuthorIdToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :author_id, :integer
  end
end
