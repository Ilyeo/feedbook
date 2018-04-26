class CreateFeedbookAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :feedbook_answers do |t|
      t.references :question, foreign_key: true
      t.references :employee_has_session, foreign_key: true
      t.text :answer

      t.timestamps
    end
  end
end
