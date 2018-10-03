class AddNationalityAndBioAndPhotoToTeachers < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :nationality, :string
    add_column :teachers, :bio, :string
    add_column :teachers, :photo, :string
  end
end
