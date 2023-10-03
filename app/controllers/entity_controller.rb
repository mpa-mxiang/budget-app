class EntityController < ApplicationController
  def index
    @entities = Entity.all
  end

  def new
    @entity = Entity.new
  end

  def create
    @entity = Entiy.new(entity_params)

    if @entity.save
      redirect_to entity_path, notice: 'Entity created successfully.'
    else
      render :new
    end
  end
  private

  def entity_params
    params.require(:entity).permit(:name, :amount)
  end
end
