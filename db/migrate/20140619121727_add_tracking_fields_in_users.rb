class AddTrackingFieldsInUsers < ActiveRecord::Migration
  def change
  	add_column :users, :sign_up_ip, :string
  	add_column :users, :referred_by_id, :integer
  	add_column :users, :tracking_code, :string
  	add_column :users, :sign_up_source, :text
  	add_column :users, :first_name, :string
  	add_column :users, :last_name, :string
  end
end
