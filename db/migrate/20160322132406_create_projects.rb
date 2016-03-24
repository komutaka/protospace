class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :catch_copy
      t.string :consept
      t.string :image
      t.string :user_id
      t.timestamps null: false
    end
  end
end
