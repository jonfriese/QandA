class Question < ActiveRecord::Base
  attr_accessible :name
  has_many :answers
  belongs_to :author, class_name: "User"
end
