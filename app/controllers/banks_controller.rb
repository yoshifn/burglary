class BanksController < ApplicationController

  def index
    @banks = Bank.all
  end

  def show
    @bank = Bank.find_by(id: params[:id])
  end

  def new
  end

  def create
    @bank = Bank.new
    @bank.name = params[:name]
    @bank.location = params[:location]

    if @bank.save
      redirect_to "/banks/#{ @bank.id }"
    else
      render 'new'
    end
  end

  def edit
    @bank = Bank.find_by(id: params[:id])
  end

  def update
    @bank = Bank.find_by(id: params[:id])
    @bank.name = params[:name]
    @bank.location = params[:location]

    if @bank.save
      redirect_to "/banks/#{ @bank.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @bank = Bank.find_by(id: params[:id])
    @bank.destroy


    redirect_to "/banks"
  end
end
