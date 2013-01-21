class CreateTalkies < ActiveRecord::Migration
  def change
    create_table :talkies do |t|
      t.string :body

      t.timestamps
    end
  end
end
