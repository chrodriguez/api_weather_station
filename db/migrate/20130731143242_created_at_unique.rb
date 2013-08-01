class CreatedAtUnique < ActiveRecord::Migration
  def up
    add_index :weather_data, :captured_at, unique: true
  end

  def down
    remove_index :weather_data, :captured_at
  end
end
