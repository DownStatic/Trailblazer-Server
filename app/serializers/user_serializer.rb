class UserSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes(*User.attribute_names.map(&:to_sym), :avatar_url)

  def avatar_url
    variant = object.avatar.variant(resize: "100x100")
    return rails_blob_url(variant)
  end

end
