class Question < ActiveRecord::Base
  attr_accessible :name
  has_many :answers
end
