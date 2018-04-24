class CreateFeedbookEmployeeHasSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :feedbook_employee_has_sessions do |t|
      t.references :session, foreign_key: true
      t.text :notes
      t.boolean :completed
      t.references :manager
      t.references :employee

      t.timestamps
    end
    add_foreign_key(:employee_has_sessions, :employees, column: :manager_id, primary_key: :id)
    add_foreign_key(:employee_has_sessions, :employees, column: :employee_id, primary_key: :id)
  end
end
