class AddDescToItems < ActiveRecord::Migration
  def change
    add_column :items, :desc, :text
  end
end
