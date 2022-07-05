class CreateBugs < ActiveRecord::Migration[5.2]
  def change
    create_table :bugs do |t|
      t.string :name, null: false
      t.references :creator, class_name: :User, index: true
      t.references :developer, class_name: :User, index: true
      t.references :project, index: true
      t.text :description
      t.string :title, index: { unique: true }
      t.datetime :deadline
      t.string :screenshot
      t.string :type
      t.string :status

      t.timestamps
    end
  end
end
