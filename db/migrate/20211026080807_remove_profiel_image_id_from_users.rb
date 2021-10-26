class RemoveProfielImageIdFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :profiel_image_id, :string
  end
end
