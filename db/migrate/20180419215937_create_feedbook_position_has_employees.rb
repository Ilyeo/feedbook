class CreateFeedbookPositionHasEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :feedbook_position_has_employees do |t|
      t.references :position, foreign_key: true
      t.references :employee, foreign_key: true
      t.text :notes
      t.string :version

      t.timestamps
    end
  end
end
