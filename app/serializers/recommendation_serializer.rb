class RecommendationSerializer < ActiveModel::Serializer
  attributes(*Recommendation.attribute_names.map(&:to_sym))
end
