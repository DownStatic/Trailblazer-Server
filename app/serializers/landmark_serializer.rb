class LandmarkSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes(:id,:details,:user_id,:trail_id,:coords,:image_url)

  def image_url
    return rails_blob_url(object.image)
  end

end
