class CreateFeedbookEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :feedbook_employees do |t|
      t.text :email
      t.string :ancestry
      t.text :ancestry_history

      t.timestamps
    end
  end
end
