class CommentSerializer < ActiveModel::Serializer
  attributes(*Comment.attribute_names.map(&:to_sym))
end
