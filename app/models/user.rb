class User < ActiveRecord::Base

  def profile_photo=(profile_photo)
    self.profile_photo_data = profile_photo.read
    self.profile_photo_filename = profile_photo.original_filename
    self.profile_photo_mime_type = profile_photo.content_type
  end
end
