class User < ActiveRecord::Base
  attr_accessible :name, :username, :password, :email, :group_id
end
