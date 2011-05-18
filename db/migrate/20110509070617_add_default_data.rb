class AddDefaultData < ActiveRecord::Migration
  def self.up
    if !User.find_by_login('admin')
      User.create(:login => 'admin', :email => 'admin.email.com', 
                  :password => 'password', :password_confirmation => 'password')
  end

  def self.down
  end
end
