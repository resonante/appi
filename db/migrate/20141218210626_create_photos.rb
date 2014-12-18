class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.belongs_to :gallery
      t.string :title
      t.attachment :image

      t.timestamps
    end
  end
end
