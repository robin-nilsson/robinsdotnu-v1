class AddSubtitlesToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :subtitle, :string, :default => "";
  end
end
