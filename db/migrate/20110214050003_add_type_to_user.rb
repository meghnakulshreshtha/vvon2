class AddTypeToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :type, :integer
  end

  def self.down
    remove_column :users, :type
  end
end
