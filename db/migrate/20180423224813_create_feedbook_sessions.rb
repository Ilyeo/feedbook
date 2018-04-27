class CreateFeedbookSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :feedbook_sessions do |t|
      t.string :session_type
      t.integer :periodicity
      t.integer :target

      t.timestamps
    end
  end
end
