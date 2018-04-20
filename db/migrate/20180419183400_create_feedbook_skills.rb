class CreateFeedbookSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :feedbook_skills do |t|
      t.string :name
      t.references :department, foreign_key: true
      t.references :skill_group, foreign_key: true

      t.timestamps
    end
  end
end
