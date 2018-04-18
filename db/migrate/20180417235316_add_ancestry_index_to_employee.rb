class AddAncestryIndexToEmployee < ActiveRecord::Migration[5.1]
  def change
    add_index :feedbook_employees, :ancestry
  end
end
