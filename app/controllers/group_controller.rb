class GroupController < ApplicationController
    def new
        @group = Group.new
    end
    def index
        @groups = Group.all
      end
    def create
        @group = Group.new(category_params)
    
        if @group.save
          redirect_to categories_path, notice: 'Category was successfully created.'
        else
          render :new
        end
      end
    
      private
    
      def category_params
        params.require(:group).permit(:name, :icon, :other_attributes)
      end
end
