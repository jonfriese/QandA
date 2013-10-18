class Answer < ActiveRecord::Base
  attr_accessible :name, :question_id
  belongs_to :parent
end
