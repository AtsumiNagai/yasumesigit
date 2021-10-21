class QolsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  

  def index
    if params[:search] == nil
      @qols= Qol.all
    elsif params[:search] == ''
      @qols= Qol.all
    else
      #部分検索
      @qols = Qol.where("food LIKE ? ",'%' + params[:search] + '%')
    end
      @qols = @qols.page(params[:page]).per(3)
      @rank_qols = Qol.all.sort {|a,b| b.liked_users.count <=> a.liked_users.count}
  end
   



  def new
    @qol = Qol.new
  end


  def create
    qol = Qol.new(qol_params)

    qol.user_id = current_user.id

    if qol.save
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end

  def show
    @qol = Qol.find(params[:id])
    @comments = @qol.comments
    @comment = Comment.new
  end

  def edit
    @qol = Qol.find(params[:id])
  end

  def update
    qol = Qol.find(params[:id])
    if qol.update(qol_params)
      redirect_to :action => "show", :id => qol.id
    else
      redirect_to :action => "new"
    end
  end

  def destroy
    qol = Qol.find(params[:id])
    qol.destroy
    redirect_to action: :index
 end


  private
  def qol_params
    params.require(:qol).permit(:food, :cost, :coupon, :place, :image, :address, :latitude, :longitude)
  end
end