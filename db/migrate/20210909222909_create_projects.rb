class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :work
      t.string :artist
      t.date :year

      t.timestamps
    end
  end
end
