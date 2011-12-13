ActiveAdmin.register Offer do
  
  index do
    column "Name" do |offer|
        link_to offer.name, admin_offer_path(offer)
     end
     column :attachment
    column "User" do |offer| 
      link_to(offer.user.name, admin_user_path(offer.user)) 
    end
    column("User", :user, :sortable => :user_id)
    column("Total") {|offer| offer.user.offers.first }
  end
  
end
