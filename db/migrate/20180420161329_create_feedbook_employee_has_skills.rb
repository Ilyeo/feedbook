class CreateFeedbookEmployeeHasSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :feedbook_employee_has_skills do |t|
      t.references :employee, foreign_key: true
      t.references :skill, foreign_key: true
      t.date :date
      t.integer :version

      t.timestamps
    end
  end
end
