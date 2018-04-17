class CreateFeedbookDepartments < ActiveRecord::Migration[5.1]
  def change
    create_table :feedbook_departments do |t|
      t.string :name

      t.timestamps
    end
  end
end
