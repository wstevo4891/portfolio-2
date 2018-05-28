class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string   :meta_title
      t.string   :meta_description
      t.string   :title
      t.string   :slug
      t.date     :date
      t.string   :cover
      t.text     :description

      t.timestamps
    end

    create_table :post_sections do |t|
      t.belongs_to :post, index: true
      t.string     :header
      t.string     :image
      t.text       :body

      t.timestamps
    end
  end
end
