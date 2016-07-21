class CreateRandomExams < ActiveRecord::Migration[5.0]
  def change
    create_table :random_exams do |t|
      t.string :name

      t.timestamps
    end
  end
end
