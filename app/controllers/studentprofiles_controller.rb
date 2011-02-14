class StudentprofilesController < ApplicationController
  def index
    @studentprofiles = Studentprofile.all
  end

  def show
    @studentprofile = Studentprofile.find(params[:id])
  end

  def new
    @studentprofile = Studentprofile.new
  end

  def create
    @studentprofile = Studentprofile.new(params[:studentprofile])
    if @studentprofile.save
      flash[:notice] = "Successfully created studentprofile."
      redirect_to @studentprofile
    else
      render :action => 'new'
    end
  end

  def edit
    @studentprofile = Studentprofile.find(params[:id])
  end

  def update
    @studentprofile = Studentprofile.find(params[:id])
    if @studentprofile.update_attributes(params[:studentprofile])
      flash[:notice] = "Successfully updated studentprofile."
      redirect_to studentprofile_url
    else
      render :action => 'edit'
    end
  end

  def destroy
    @studentprofile = Studentprofile.find(params[:id])
    @studentprofile.destroy
    flash[:notice] = "Successfully destroyed studentprofile."
    redirect_to studentprofiles_url
  end
end
