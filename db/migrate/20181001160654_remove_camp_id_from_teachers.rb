class RemoveCampIdFromTeachers < ActiveRecord::Migration[5.2]
  def change
    remove_column :teachers, :camp_id, :integer
  end
end
