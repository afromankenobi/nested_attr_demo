class RandomExamSection < ApplicationRecord
  belongs_to :random_exam
  belongs_to :section

  attr_accessor :selected
end
