class SmasController < ApplicationController
  #add before_action
  
  def index
    @smas = current_user.smas.paginate(page: params[:page])
  end  
  
  def show
    
  end  
  
  def new
    @sma = Sma.new
  end  
  
  def create
    @sma = current_user.smas.build(sma_params)
    if @sma.save
      flash[:success] = "Item created Successfully."
      redirect_to new_sma_path
    else
      render 'static_pages/spage2'
    end
  end  
  
  def edit
    #Not using as of now
  end  
  
  def update
    #not using as of now
  end  
  
  def destroy
    
  end  
  
  private
  
  def sma_params
    params.require(:sma).permit(:item_code, :description, :sma1, :sma2, :sma3, :sma4, :sma5, :sma6, :sma7, :sma8, :sma9, :sma10, :sma11, :sma12)
  end
  
end
