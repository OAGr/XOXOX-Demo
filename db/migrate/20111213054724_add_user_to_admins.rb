class AddUserToAdmins < ActiveRecord::Migration
 
      AdminUser.create!(:email => 'ozzie_gooen@hmc.edu', :password => 'password', :password_confirmation => 'password')


end
