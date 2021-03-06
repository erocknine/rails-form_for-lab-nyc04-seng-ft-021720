class SchoolClassesController < ApplicationController

  def show
    @school_class = SchoolClass.find([:id])
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(school_class_params)
    redirect_to school_class_path(@school_class)
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = School_class.find(params[:id])
    @school_class.update(school_class_params)
    redirect_to school_class_path(@school_class)
  end

  def school_class_params(*args)
    params.require(:school_classes).permit(*args)
  end


end