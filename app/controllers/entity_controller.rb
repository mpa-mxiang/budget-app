class EntityController < ApplicationController
  before_action :authenticate_user!

  def index
    @entity = Entity.all
  end

  def new
    @entity = Entity.new
    @groups = Group.all
  end

  def create
    @entity = Entity.new(entity_params)
    @entity.group_id = params[:entity][:group_id]

    if @entity.save
      puts '=============================================='
      puts 'IT WAS SAVED'
      puts '=============================================='
      redirect_to entity_index_path, notice: 'Trasaction was successfully created.'
    else
      # render :new
      puts @entity.errors.full_messages
      puts '=============================================='
      puts 'NOT SAVED'
      puts '=============================================='
    end
  end

  private

  def entity_params
    params.require(:entity).permit(:name, :amount, :group_id, :other)
  end
end
