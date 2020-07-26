class Api::V1::MovieSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :title, :description,  :thumbnail_key
  
  attribute :category do |object| 
   object.category&.name
  end
  
  attribute :favorite do |object, params|
   if params.present? && params.has_key?(:user)
    params[:user].favorites.where(favoritable: object).exists?
   end
  end
end