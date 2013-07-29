ActiveAdmin.register Announcement do

  form do |f|
    f.inputs "Announcement Details" do
      f.input :title
      f.input :body
      f.input :announcement_date, :as => :datepicker
    end
    f.actions
  end
end
