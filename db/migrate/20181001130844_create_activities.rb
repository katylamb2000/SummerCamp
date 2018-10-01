class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.integer :teacher_id
      t.integer :camp_id
      t.integer :skill_id
      t.datetime :date

      t.timestamps
    end
  end
end
