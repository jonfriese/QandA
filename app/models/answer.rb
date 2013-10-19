class Answer < ActiveRecord::Base
  attr_accessible :name, :question_id
  belongs_to :question
  belongs_to :author, class_name: "User"
end
