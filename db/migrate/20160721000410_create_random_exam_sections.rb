class CreateRandomExamSections < ActiveRecord::Migration[5.0]
  def change
    create_table :random_exam_sections do |t|
      t.references :random_exam, foreign_key: true
      t.references :section, foreign_key: true

      t.integer :questions_number

      t.timestamps
    end
  end
end
