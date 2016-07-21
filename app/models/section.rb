class Section < ApplicationRecord
  has_many :random_exam_sections
  has_many :random_exams, :through => :random_exam_sections
end
