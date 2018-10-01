class CreateCampSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :camp_skills do |t|
      t.integer :camp_id
      t.integer :skill_id

      t.timestamps
    end
  end
end
