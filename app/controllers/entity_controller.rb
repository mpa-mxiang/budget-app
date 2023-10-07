class EntityController < ApplicationController
  before_action :authenticate_user!

  def index
    @entities = Entity.all
  end

  def new
    @test = params[:entity][:group_id] 
    @entity = Entity.new
    @groups = Group.all
    @entity.group_id = Group.find(params[:entity][:group_id] )   

    

  end

  def create
    
    
    @entity = Entity.new(entity_params)
    @entity.group_id = @group_id

    
    puts "================================="
    puts @entity.inspect
    puts "================================="

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
    params.require(:entity).permit(:name, :amount, :group_id, :other)
  end
end
