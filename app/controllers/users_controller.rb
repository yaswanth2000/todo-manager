class UsersController<ApplicationController
  skip_before_action :verify_authenticity_token
  def index
      render plain: User.all.map{|user| user.to_displayable}.join("\n")
  end
  def create
      name=params[:name]
      email=params[:email]
      password=params[:password]
      new_user=User.create!(name:name,email:email,password:password)
      render plain: "created new_user with id:#{new_user.id}"
  end
  def login
      email=params[:email]
      password=params[:password]
      value=User.find_by(email:email,password:password)
      if value==nil
          render plain: "false"
      else
          render plain: "True"
      end
  end
end
