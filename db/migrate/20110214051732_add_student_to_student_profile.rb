class AddStudentToStudentProfile < ActiveRecord::Migration
  def self.up
    add_column :studentprofiles, :student_id, :integer
  end

  def self.down
    remove_column :studentprofiles, :student_id
  end
end
