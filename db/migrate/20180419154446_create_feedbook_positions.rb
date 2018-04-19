class CreateFeedbookPositions < ActiveRecord::Migration[5.1]
  def change
    create_table :feedbook_positions do |t|
      t.string :name
      t.text :job_description
      t.references :department, foreign_key: true

      t.timestamps
    end
  end
end
