class RobbersController < ApplicationController

  def index
    @robbers = Robber.all
  end

  def show
    @robber = Robber.find_by(id: params[:id])
  end

  def new
  end

  def create
    @robber = Robber.new
    @robber.name = params[:name]
    @robber.email = params[:email]

    if @robber.save
      redirect_to "/robbers/#{ @robber.id }"
    else
      render 'new'
    end
  end

  def edit
    @robber = Robber.find_by(id: params[:id])
  end

  def update
    @robber = Robber.find_by(id: params[:id])
    @robber.name = params[:name]
    @robber.email = params[:email]

    if @robber.save
      redirect_to "/robbers/#{ @robber.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @robber = Robber.find_by(id: params[:id])
    @robber.destroy


    redirect_to "/robbers"
  end
end
