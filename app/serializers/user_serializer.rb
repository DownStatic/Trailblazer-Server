class UserSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes(:id,:name,:age,:proficiency,:address,:coords,:avatar_url)

  def avatar_url
    # local storage url
    # return rails_blob_url(object.avatar)

    # AWS url
    return url_for(object.avatar)
  end

end
