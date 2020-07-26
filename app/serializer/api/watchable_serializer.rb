class Api::V1::WatchableSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :title, :description, :thumbnail_key
   
    
   attribute :favorite do |object, params|
    if params.present? && params.has_key?(:user)
     params[:user].favorites.where(favoritable: object).exists?
    end
   end
   
     end
   
   attribute :thumbnail_key do |object|
    if object[:thumbnail_key].present?
     object.thumbnail_key
    end
   end
  end
end  