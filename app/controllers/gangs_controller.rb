class GangsController < ApplicationController

  def index
    @gangs = Gang.all
  end

  def show
    @gang = Gang.find_by(id: params[:id])
  end

  def new
  end

  def create
    @gang = Gang.new
    @gang.name = params[:name]
    @gang.lord = params[:lord]

    if @gang.save
      redirect_to "/gangs/#{ @gang.id }"
    else
      render 'new'
    end
  end

  def edit
    @gang = Gang.find_by(id: params[:id])
  end

  def update
    @gang = Gang.find_by(id: params[:id])
    @gang.name = params[:name]
    @gang.lord = params[:lord]

    if @gang.save
      redirect_to "/gangs/#{ @gang.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @gang = Gang.find_by(id: params[:id])
    @gang.destroy


    redirect_to "/gangs"
  end
end
