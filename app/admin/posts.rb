ActiveAdmin.register Post do

  index do
    column :title
    column "By", :user
    column "Posted", :created_at
    actions
  end

  controller do
    def create
      create! do |format|
        format.html { redirect_to root_url }
      end
    end
  end

  form do |f|
    f.inputs "Blog Post" do
      f.input :title
      f.input :user_id, :value => current_user.id, :as => :hidden
      f.input :body, :as => :rich, :config => { :width => '76%', :height => '400px' }
      f.input :categories, :label => "Tags", :as => :check_boxes, :collection => Category.all
    end
    f.buttons
  end
end
