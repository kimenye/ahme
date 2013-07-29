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

  #controller do
  #  def create
  #    binding.pry
  #    create! do |format|
  #      format.html {
  #        # add default role of admin for now
  #        resource.add_role 'admin'
  #        resource.save
  #      }
  #      redirect_to '/admin/users'
  #    end
  #  end
  #end


  form do |f|
    f.inputs "Blog Post" do
      f.input :title
      f.input :user_id, :value => current_user.id, :as => :hidden
      f.input :body, :as => :rich, :config => { :width => '76%', :height => '400px' }
      f.input :tag_list, :hint => 'Comma separated'
      #f.input :tag_list, :as => :check_boxes,
      #        :collection => Category.all.collect { |c| c.name }
    end
    f.buttons
  end
end
