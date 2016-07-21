class RandomExam < ApplicationRecord
  has_many :random_exam_sections, inverse_of: :random_exam
  has_many :sections, :through => :random_exam_sections

  accepts_nested_attributes_for :random_exam_sections, reject_if: :is_not_selected


  private
  def is_not_selected(attr)
    attr["selected"] == '0'
  end
end
