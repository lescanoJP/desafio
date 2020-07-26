class Api::V1::CategorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
  
  attribute :movies do |object|
   Api::V1::MovieSerializer.new(object.movies).serializable_hash
  end