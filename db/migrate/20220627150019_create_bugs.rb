class CreateBugs < ActiveRecord::Migration[5.2]
  def change
    create_table :bugs do |t|
      t.string :name
      t.integer :creator_id
      t.integer :developer_id
      t.unique :project_id
      t.text :description
      t.unique :title
      t.date :deadline
      t.string :screenshot
      t.enum :type
      t.enum :status

      t.timestamps
    end
  end
end
