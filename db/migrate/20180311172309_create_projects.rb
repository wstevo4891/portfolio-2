class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string   :meta_title
      t.string   :meta_description
      t.string   :title
      t.string   :slug
      t.string   :cover
      t.string   :images, array: true, default: []
      t.string   :site_link
      t.string   :repo_link
      t.text     :description
      t.text     :summary, array: true, default: []
      t.string   :highlights, array: true, default: []
      t.string   :tech_stack, array: true, default: []

      t.timestamps
    end

    create_table :project_demos do |t|
      t.belongs_to :project, index: true
      t.string     :header
      t.string     :image
      t.text       :body

      t.timestamps
    end
  end
end
