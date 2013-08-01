ActiveAdmin.register Stakeholder do
  form do |f|
    f.inputs "Stakeholder" do
      f.input :first_name
      f.input :last_name
      f.input :organisation
      f.input :email
      f.input :tel
      f.input :physical_address
      f.input :country, :as => :select, :collection => ["Kenya", "Nigeria", "Ghana", "Other"]
      f.input :description

    end
    f.buttons
  end
  config.comments = false
end
