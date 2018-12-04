class CommentSerializer < ActiveModel::Serializer
  attributes(:text,:user_id,:trail_id)
end
