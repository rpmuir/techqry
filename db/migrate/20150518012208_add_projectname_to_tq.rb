class AddProjectnameToTq < ActiveRecord::Migration
  def change
    add_column :tqs, :projectname, :string
  end
end
