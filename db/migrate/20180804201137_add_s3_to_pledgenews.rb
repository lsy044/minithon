class AddS3ToPledgenews < ActiveRecord::Migration[5.0]
  def change
    add_column :pledgenews, :image, :string
    add_column :pledgenews, :image2, :string
  end
end
