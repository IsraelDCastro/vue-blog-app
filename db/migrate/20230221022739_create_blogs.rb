class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :content
      t.string :status
      t.string :preview_content
      t.string :image_url

      t.timestamps
    end
  end
end
