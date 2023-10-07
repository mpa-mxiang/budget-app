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
      shopping-cart
      briefcase
      cog
      check-circle
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

  private

  def category_params
    params.require(:group).permit(:name, :icon, :user_id)
  end
end
