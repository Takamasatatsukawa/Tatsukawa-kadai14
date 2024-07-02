class FavoritesController < ApplicationController

  def create
    @favorite = current_user.favorites.create(blog_id: params[:blog_id])
    respond_to do |format|
      format.html { redirect_to blogs_path }
      format.js
    end
  end

  def destroy
    @favorite = current_user.favorites.find_by(id: params[:id])
    @favorite.destroy if @favorite
    respond_to do |format|
      format.html { redirect_to blogs_path }
      format.js
    end
  end

end
