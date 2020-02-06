class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.string :title, null: false
      t.string :image, null: false
      t.text :content
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
