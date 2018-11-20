class LandmarkSerializer < ActiveModel::Serializer
  attributes(*Landmark.attribute_names.map(&:to_sym))
end
