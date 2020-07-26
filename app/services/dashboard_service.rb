class DashboardService
 
  def initialize (type, user)
   @type = type
   @user = user
  end
  
  def perform
   send("group_by_category")
  end
  
  private
  
   def group_by_category
    categories = Category.includes:movies
    Api::V1::CategorySerializer.new(categories)
   end
 end