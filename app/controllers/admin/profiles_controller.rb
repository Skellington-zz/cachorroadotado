class Admin::ProfilesController < Admin::BaseController
  before_filter :build_object, :only => [:new, :create]
  before_filter :find_object, :only => [:show, :edit, :update, :destroy]

  def index
    @profiles = Profile.all
    respond_with @profiles
  end

  def show
  end

  def new
  end

  def create
    @profile.save!
    respond_with_profiles_collection
  end

  def edit
  end

  def update
    @profile.update_attributes(params[:profile])
    respond_with_profiles_collection
  end

  def destroy
    @profile.destroy
    respond_with_profiles_collection
  end


  private
  def find_object
    @profile = Profile.find(params[:id])
  end

  def build_object
    @profile = Profile.new(params[:profile])
  end

  def respond_with_profiles_collection
    respond_with @profile, :location => admin_profiles_path
  end
end
