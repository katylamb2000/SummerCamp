class CreateTeacherSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :teacher_skills do |t|
      t.integer :teacher_id
      t.integer :skill_id

      t.timestamps
    end
  end
end
