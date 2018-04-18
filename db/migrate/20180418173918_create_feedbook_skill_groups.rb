class CreateFeedbookSkillGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :feedbook_skill_groups do |t|
      t.string :name

      t.timestamps
    end
  end
end
