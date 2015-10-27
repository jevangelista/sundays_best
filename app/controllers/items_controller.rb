class ItemsController < ApplicationController
  
  def index
  	@items = Item.all
	render :index
  end

  def new
  	@item = Item.new
	render :new
  end

  def create
	item_params = params.require(:item).permit(:item_category, :name, :purchase_link, :item_img)
    @item = Item.create(item_params)

	redirect_to "/items/#{@item.id}"
  end

  def show
  	@item = Item.find(params[:id])
    render :show
  end

  def generate
    @item_tops = Item.where(item_category: "Top").order("RANDOM()").first
    @item_bottoms = Item.where(item_category: "Bottom").order("RANDOM()").first

  end






end

