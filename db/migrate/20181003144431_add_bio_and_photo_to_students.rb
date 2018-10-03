class AddBioAndPhotoToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :bio, :string
    add_column :students, :photo, :string
  end
end
