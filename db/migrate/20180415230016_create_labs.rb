class CreateLabs < ActiveRecord::Migration[5.1]
  def change
    create_table :labs do |t|
      t.string   :title
      t.string   :slug
      t.string   :cover
      t.text     :description
      t.string   :tech_stack, array: true, default: []

      t.timestamps
    end
  end
end
