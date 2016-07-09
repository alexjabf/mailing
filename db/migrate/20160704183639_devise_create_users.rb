class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      
      ## Database authenticatable
      t.string :email, null: false, unique: true, index: true
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token, unique: true, index: true
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Lockable
      t.integer  :failed_attempts, default: 0
      t.string   :unlock_token, unique: true, index: true
      t.datetime :locked_at

      ## Token authenticatable
      t.string :authentication_token, unique: true, index: true
      
      ##LOGO
      t.string :logo_file_name
      t.string :logo_content_type
      t.integer :logo_file_size
      t.timestamp :logo_updated_at

      t.timestamps null: false
    end
  end
end
