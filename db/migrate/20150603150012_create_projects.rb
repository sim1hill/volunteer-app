class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :neighborhood
      t.text :description
      t.belongs_to :user
      t.belongs_to :topic 
      t.timestamps null: false
    end
  end
end
