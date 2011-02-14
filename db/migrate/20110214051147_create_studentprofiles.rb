class CreateStudentprofiles < ActiveRecord::Migration
  def self.up
    create_table :studentprofiles do |t|
      t.string :usn
      t.integer :sem
      t.string :dept
      t.string :role
      t.timestamps
    end
  end

  def self.down
    drop_table :studentprofiles
  end
end
