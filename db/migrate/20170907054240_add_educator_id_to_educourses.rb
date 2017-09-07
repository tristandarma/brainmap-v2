class AddEducatorIdToEducourses < ActiveRecord::Migration[5.1]
  def change
    add_column :educourses, :educator_id, :integer
  end
end
