class CreateFeedbookQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :feedbook_questions do |t|
      t.references :session, foreign_key: true
      t.string :question
      t.integer :type
      t.string :options
      t.boolean :required

      t.timestamps
    end
  end
end
