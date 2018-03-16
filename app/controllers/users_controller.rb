class UsersController < ApplicationController
  def index
    @users = User.all

    render("user_templates/index.html.erb")
  end
  
  def show
    @user = User.find(params.fetch("id_to_display"))

    render("user_templates/show.html.erb")
  end

  def show_likes

    render("user_templates/show_likes.html.erb")
  end
  
  def edit_form
    @user = User.find(params.fetch("prefill_with_id"))
    render("user_templates/edit_form.html.erb")
  end
  
  def update_row
     @user = User.find(params.fetch("id_to_modify"))
      @user.username = params.fetch("username")

    if @user.valid?
      @user.save

      redirect_to("/user/#{@user.id}", :notice => "Username updated successfully.")
    else
      render("user_templates/edit.html.erb")
  end
end
end