class ChangeDatatypeOfType < ActiveRecord::Migration
  def self.up
    change_column :users, :type, :string
  end

  def self.down
    change_column :users, :type, :integer
  end
end
