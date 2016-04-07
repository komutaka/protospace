class AddTitleToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :title, :string
    remove_column :projects, :consept, :string
    add_column :projects, :concept, :string
    remove_column :projects, :image, :string
  end
end
