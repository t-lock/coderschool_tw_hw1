class HomeController < ApplicationController
  def index
  end

  def contact_us
  end

  def menu
    @sections = Section.all

    # first get the full set depending on params
    if params[:section_id].present?
      @current_section = Section.find(params[:section_id])
      @food_items = @current_section.food_items
    elsif params[:search]
      @food_items = FoodItem.search(params[:search]).order("created_at DESC")
    else
      @food_items = FoodItem.all
    end

    # then sort
    if params[:sort_column]
      @food_items = @food_items.order("#{params[:sort_column]} #{params[:sort_direction]}")
    end

  end
end
