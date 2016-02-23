class User < ActiveRecord::Base
  has_attached_file :profile_photo, :styles => { :medium => "300x300", :thumb => "100x100" }, :s3_host_name => "s3-us-west-2.amazonaws.com"


  validates_attachment_content_type :profile_photo, :content_type => /\Aimage\/.*\Z/
end

