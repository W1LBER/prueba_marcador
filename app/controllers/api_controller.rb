class ApiController < ApplicationController
  def index
    @categories = Category.all
    @all = Array.new
    @categories.each do |x|
        hash = {
          name: x.name,
          subcategories: {
            name: x.subcategories,
            bookmarks: [
              name:Bookmark.where(subcategory_id: x.subcategories.map{|x| x.id})
            ]
          } 

        }
      @all << hash
    end


    render json: @all
  end
end
