ActiveAdmin.register Application do
permit_params :carrier, :subscriber, :group, :benefit_plan

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

  index do
    selectable_column
    id_column


	column :carrier_account

	column :group_account
	column :subscriber_account
	column :benefit_plan
	column :created_at
	column :action
    
    
    
    column :carrier
    column :subscription #membership
    column :properties #?

    column :action
    column :purpose
    
    column :reference_number
    column :trading_partner_id
    actions
    end

	filter :carrier_account

	filter :group_account
	filter :subscriber_account
	filter :benefit_plan
	filter :created_at
	filter :action
  	filter :created_at

 

end

