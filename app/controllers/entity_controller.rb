class EntityController < ApplicationController
  before_action :authenticate_user!

  def index
    @entities = Entity.all
  end

  def new
    @entity = Entity.new
    @groups = Group.where(user_id: current_user.id)

  end

  def create
    @entity = Entity.new(entity_params)

    if @entity.save
      puts "================================="
      puts "----------------------------SAVED"
      puts "================================="
      redirect_to entity_path, notice: 'Entity created successfully.'
    else
      puts @entity.errors.full_messages
      puts "================================="
      puts "-----------------------NOT SAVED"
      puts "================================="
      puts @entity.errors.full_messages
      render :new
    end
  end
  private

  def entity_params
    params.require(:entity).permit(:name, :amount, :group)
  end
end
