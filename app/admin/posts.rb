ActiveAdmin.register Post do

  index do
    column :title
    column "By", :user
    column "Posted", :created_at
    actions
  end

  show do
    render "post"
  end

  form do |f|
    f.inputs "Blog Post" do
      f.input :title
      f.input :user_id, :value => current_user.id, :as => :hidden
      f.input :body, :as => :rich, :config => { :width => '76%', :height => '400px' }
    end
    f.buttons
  end
end
