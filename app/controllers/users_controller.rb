class UsersController < ApplicationController
  def create

    @user = User.new(:email => request.headers["HTTP_EMAIL"], :password_digest => request.headers["HTTP_PASSWORD_DIGEST"])
    if @user.save!
      token = Token.generate
      json_response({:message=>"User created", :email=>@user.email, :password_digest=>@user.password_digest, :token=>token.token_hash}, 201)
    else
      json_response(:message=>"Sorry! Try again.")
    end
  end

  def new
    json_response({:message => "Send a post request to '/register' to sign up! Enter email and password in Headers." , :email=>"", :password_digest=>""})
  end

end
