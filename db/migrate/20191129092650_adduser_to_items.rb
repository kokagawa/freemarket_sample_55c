class AdduserToItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :user
  end
end
