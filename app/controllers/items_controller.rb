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
    @ootd = Ootd.find(params[:ootd_id])
    render :show
  end

  def edit
    @item = Item.find(params[:id])
  end

  def destroy
    @item.destroy
    redirect_to "/ootds"
  end

  # Add and remove favorite recipes
  # for current_user
  def favorite
    @item = Item.find(params[:id])
    type = params[:type]
    if type == "favorite"
      current_user.favorites << @item
      redirect_to "/ootds", notice: 'Item was saved to your favorites!'

    elsif type == "unfavorite"
      current_user.favorites.delete(@item)
      redirect_to "/ootds", notice: 'Item was unsaved from your favorites!'

    else
      # Type missing, nothing happens
      redirect_to "/ootds", notice: 'Nothing happened.'
    end
  end

  def favorite_index
  end


  def generate
    @item_tops = Item.where(item_category: "Top").order("RANDOM()").first
    @item_bottoms = Item.where(item_category: "Bottom").order("RANDOM()").first

  end

  


end

