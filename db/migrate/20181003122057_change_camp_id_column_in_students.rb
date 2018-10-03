class ChangeCampIdColumnInStudents < ActiveRecord::Migration[5.2]
  def change
    change_column :students, :camp_id, :integer, :default => nil
  end
end
