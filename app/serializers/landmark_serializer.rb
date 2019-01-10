class LandmarkSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes(:id,:details,:user,:trail_id,:coords,:image_url)

  def image_url
    # local storage url
    # return rails_blob_url(object.image)

    # AWS url
    return object.image.service_url
  end

  def user
    @user = User.all.find{|u| u.id == object.user_id}
    if @user
      return @user.name
    else
      return nil
    end
  end

end
