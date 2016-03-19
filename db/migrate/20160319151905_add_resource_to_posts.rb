class AddResourceToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :resource, :bool
  end
end
