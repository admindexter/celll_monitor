class AddRoleToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :role, :string, :default => "apprentice"
  end

  def self.down
    remove_column :users, :role
  end
end

