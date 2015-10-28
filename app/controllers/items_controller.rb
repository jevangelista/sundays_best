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
  @ootd = Ootd.find(params[:ootd_id])
  @ootd.items.push(@item)

	redirect_to "/ootds", flash: { success: "Successfully uploaded new item!" }
  end

  def show
  	@item = Item.find(params[:id])
    render :show
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    item_params = params.require(:item).permit(:item_category, :name, :purchase_link, :item_img)
      if @item.update(ootd_params)
      redirect_to @item
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    redirect_to "/ootds"
  end

  def generate
    @item_tops = Item.where(item_category: "Top").order("RANDOM()").first
    @item_bottoms = Item.where(item_category: "Bottom").order("RANDOM()").first

  end



end

