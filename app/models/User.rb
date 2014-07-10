class User < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  has_attached_file :avatar, :default_url => "/images/default_:style_avatar.png"
User.new.avatar_url(:small) # => "/images/default_small_avatar.png"
end