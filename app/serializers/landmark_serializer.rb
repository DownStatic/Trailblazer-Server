class LandmarkSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes(*Landmark.attribute_names.map(&:to_sym), :image_url)

  def image_url
    return rails_blob_url(object.image)
  end

end
