class CategoriesController < ApplicationController
  def index
    @categories=Category.all
  end
  def add_task
    @category= Category.find(params[:id].to_i)
    @tasks=Task.order(:position)
    render 'add_task'
  end
  def add
    @category = Category.find(params[:id].keys.join("").to_i)
    params.each do |key,val|
      i=Integer(key) rescue nil
      if i and val.eql?("1")
        @category.tasks << Task.find(Integer(key))
      end
    end
    # puts params
    # puts "bye"


    redirect_to categories_path


  end

  def show
  end

  def edit
  end
  def update
  end

  def delete
  end
  def destroy
  end

  def new
  end

  def create
  end
end
