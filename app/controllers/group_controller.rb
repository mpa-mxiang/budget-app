class GroupController < ApplicationController
  before_action :authenticate_user!
  def new
    @group = Group.new
    @icon_options = %w[
      home
      heart
      globe
      user
      envelope
      camera
      briefcase
      cog
    ]
  end

  def show
    @group = Group.find(params[:id])
  end

  def index
    @groups = Group.all
  end

  def create
    @group = Group.new(category_params)
    @group.author_id = current_user.id

    if @group.save
      puts '=============================================='
      puts 'IT WAS SAVED'
      puts '=============================================='
      redirect_to root_path, notice: 'Category was successfully created.'
    else
      # render :new
      puts @group.errors.full_messages
      puts '=============================================='
      puts 'NOT SAVED'
      puts '=============================================='
    end
  end
  def sum
    @group = Group.find(params[:id])
    @amount = @group.entities.sum(:amount)
  end
  private

  def category_params
    params.require(:group).permit(:name, :icon)
  end
end