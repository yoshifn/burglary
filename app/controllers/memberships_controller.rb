class MembershipsController < ApplicationController

  def index
    @memberships = Membership.all
  end

  def show
    @membership = Membership.find_by(id: params[:id])
  end

  def new
    @gangs = Gang.all
    @robbers = Robber.all
  end

  def create
    @membership = Membership.new
    @membership.robber_id = params[:robber_id]
    @membership.gang_id = params[:gang_id]

    if @membership.save
      redirect_to "/memberships/#{ @membership.id }"
    else
      render 'new'
    end
  end

  def edit
    @membership = Membership.find_by(id: params[:id])
  end

  def update
    @membership = Membership.find_by(id: params[:id])
    @membership.robber_id = params[:robber_id]
    @membership.gang_id = params[:gang_id]

    if @membership.save
      redirect_to "/memberships/#{ @membership.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @membership = Membership.find_by(id: params[:id])
    @membership.destroy


    redirect_to "/memberships"
  end
end
