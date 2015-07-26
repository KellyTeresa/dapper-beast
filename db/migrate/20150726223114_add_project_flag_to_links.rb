class AddProjectFlagToLinks < ActiveRecord::Migration
  def change
    add_column :links, :project, :boolean, null: false, default: false
  end
end
