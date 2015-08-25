class AddStoreIdToItems < ActiveRecord::Migration
  def change
    add_reference :items, :store_id, index: true
  end
end
