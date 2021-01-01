class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.boolean :has_like
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :image, null: false, foreign_key: true

      t.timestamps
    end
  end
end
