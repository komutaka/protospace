class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :project_id
      t.string :status
      t.timestamps null: false
    end
  end
end
