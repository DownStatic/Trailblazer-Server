class UserSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes(*User.attribute_names.map(&:to_sym), :avatar_url)

  def avatar_url
     return rails_blob_url(object.avatar)
  end

end
