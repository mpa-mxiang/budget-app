class EntityController < ApplicationController
  before_action :authenticate_user!

  def index
    @entities = Entity.all
  end

  def new
    @entity = Entity.new
    @groups = Group.all
  end
  

  def create
    @entity = Entity.new(entity_params)
    @entity.group_id = params[:entity][:group_id]
  
    if @entity.save
      flash[:notice] = 'Entity created successfully.'
      redirect_to entity_index_path
    else
      puts @entity.errors.full_messages
      render :new
    end
  end
  private

  def entity_params
    params.require(:entity).permit(:name, :amount, :group_id, :other)
  end
end
