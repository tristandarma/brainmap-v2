class AddEducatorIdToEducourse < ActiveRecord::Migration[5.1]
  def change
    add_column :educourses, :Educourse_id, :integer
  end
end
