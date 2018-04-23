class CreateFeedbookSkillHasPositions < ActiveRecord::Migration[5.1]
  def change
    create_table :feedbook_skill_has_positions do |t|
      t.references :skill, foreign_key: true
      t.references :position, foreign_key: true
      t.string :skill_level

      t.timestamps
    end
  end
end
