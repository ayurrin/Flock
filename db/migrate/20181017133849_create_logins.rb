class CreateLogins < ActiveRecord::Migration[5.2]
  def change
    create_table :logins do |t|
      t.string :provider
      t.string :uid
      t.string :nickname
      t.string :image_url

      t.timestamps
    end
  end
end
