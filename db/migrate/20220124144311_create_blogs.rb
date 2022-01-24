class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.string :name, null: false
      t.string :slug, null: false

      t.timestamps
    end
  end
end
