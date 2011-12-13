ActiveAdmin.register User do
  
  index do
    column "Name" do |user|
         link_to user.name, admin_user_path(user)
       end
    column :bio
    column :email

    column "Offers" do |user| 
      link_to(user.offers.count, admin_user_path(user)) 
    end

    default_actions
  end
  
end

