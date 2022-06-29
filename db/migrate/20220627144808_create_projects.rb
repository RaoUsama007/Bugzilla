class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.references :manager, class_name: User, index: true

      t.timestamps
    end
  end
end
