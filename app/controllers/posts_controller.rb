class PostsController < ApplicationController

  before_action :authenticate_user
  before_action :ensure_correct_user,{only:[:edit,:update,:destroy]}


  def index
    @records = Record.all.order(created_at: :desc)
  end

  def show
    @record = Record.find_by(id: params[:id])
    @user = @record.user
    @likes_count = Like.where(record_id: @record.id).count
  end

  def new
    @record = Record.new

  end

  def create
    @record = Record.new(
      task: params[:task],
      hour: params[:hour],
      minute: params[:minute],
      user_id: @current_user.id
    )
    if @record.save
      flash[:notice] = "お疲れ様でした!"
      redirect_to("/posts/index")
    else
      render("posts/new")
    end
  end

  def edit
    @record = Record.find_by(id: params[:id])
  end

  def update
    @record = Record.find_by(id: params[:id])
    @record.task = params[:task]
    @record.hour = params[:hour]
    @record.minute = params[:minute]

    if @record.save
      flash[:notice] = "編集しました"
      redirect_to("/posts/index")
    else
      render("posts/edit")

    end
  end

  def destroy
    @record = Record.find_by(id: params[:id])
    @record.destroy
    flash[:notice] = "削除しました"
    redirect_to("/posts/index")
  end

  def ensure_correct_user
    @record = Record.find_by(id: params[:id])
    if @record.user.id != @current_user.to_i
      flash[:notice] = "権限がありません"
      redirect_to("/posts/index")
    end
  end
end
