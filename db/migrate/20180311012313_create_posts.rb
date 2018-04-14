class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string   :title
      t.string   :slug
      t.date     :date
      t.string   :cover
      t.text     :description
      t.string   :images, array: true, default: []

      t.timestamps
    end

    create_table :post_sections do |t|
      t.belongs_to :post, index: true
      t.string     :header
      t.string     :image
      t.text       :body
    end
  end
end
