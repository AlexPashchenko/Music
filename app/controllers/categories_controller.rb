class CategoriesController < ApplicationController
  before_action :set_category
  def index
    @categories = Category.all
  end
  def create
    @category=Category.new(category_params)
    @category.save
  end

  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to @category }
        format.json { render :show, status: :ok, location: @category }
      else
        format.html { render :edit }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @category.destroy
    respond_to do |format|
      format.html { redirect_to categories_url }
      format.json { head :no_content }
    end
  end

  private

  def set_category
  @post = Category.find(params[:id])
  end

  def category_params
  params.require(:category).permit(:name)
  end

end