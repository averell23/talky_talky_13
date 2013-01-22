class AddUserToTalkies < ActiveRecord::Migration
  def change
    add_column :talkies, :user_id, :integer
  end
end
