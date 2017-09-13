ActiveAdmin.register Song do 
	actions :all, except: [:destroy]
	permit_params :title
end
