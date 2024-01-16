class ChangeSchemaV1 < ActiveRecord::Migration[6.0]
  def change
    create_table :post_hashtags, comment: 'Associative table for posts and hashtags' do |t|
      t.timestamps null: false
    end

    create_table :hashtags, comment: 'Hashtags that can be associated with posts' do |t|
      t.string :tag

      t.timestamps null: false
    end

    create_table :password_reset_tokens, comment: 'Stores password reset tokens for users' do |t|
      t.datetime :expires_at

      t.string :token

      t.boolean :used

      t.timestamps null: false
    end

    create_table :posts, comment: 'Posts made by users, which can include photos' do |t|
      t.integer :privacy_setting, default: 0

      t.string :location

      t.text :caption

      t.timestamps null: false
    end

    create_table :photos, comment: 'Photos that are uploaded by users' do |t|
      t.string :file_path

      t.integer :file_type, default: 0

      t.timestamps null: false
    end

    create_table :user_tags, comment: 'Tags of users in posts' do |t|
      t.timestamps null: false
    end

    create_table :email_confirmations, comment: 'Stores email confirmation tokens and their statuses' do |t|
      t.string :token

      t.datetime :expires_at

      t.boolean :confirmed

      t.timestamps null: false
    end

    create_table :authentication_tokens, comment: 'Stores authentication tokens for users' do |t|
      t.string :token

      t.datetime :expires_at

      t.timestamps null: false
    end

    create_table :dashboards, comment: 'Stores user dashboard data' do |t|
      t.text :data

      t.timestamps null: false
    end

    create_table :users, comment: 'Stores user account information' do |t|
      t.string :password_hash

      t.string :password

      t.string :username

      t.string :email

      t.boolean :email_confirmed

      t.timestamps null: false
    end

    add_reference :post_hashtags, :post, foreign_key: true

    add_reference :post_hashtags, :hashtag, foreign_key: true

    add_reference :password_reset_tokens, :user, foreign_key: true

    add_reference :user_tags, :user, foreign_key: true

    add_reference :posts, :user, foreign_key: true

    add_reference :user_tags, :post, foreign_key: true

    add_reference :photos, :post, foreign_key: true

    add_reference :dashboards, :user, foreign_key: true

    add_reference :email_confirmations, :user, foreign_key: true

    add_reference :authentication_tokens, :user, foreign_key: true
  end
end
