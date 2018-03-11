class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string   :title
      t.string   :slug
      t.json     :skills, array: true, default: []
      t.string   :cover
      t.string   :site_link
      t.string   :repo_link
      t.text     :description
      t.json     :highlights, array: true, default: []
      t.json     :tech_stack, array: true, default: []
      t.json     :images, array: true, default: []

      t.timestamps
    end

    create_table :project_demos do |t|
      t.belongs_to :project, index: true
      t.string     :name
      t.string     :image
      t.text       :body

      t.timestamps
    end
  end
end
