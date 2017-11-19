class Admin::UsersController < Admin::BaseController
  load_and_authorize_resource param_method: :admin_user_params
  before_action :set_admin_user, only: [:show, :edit, :update, :destroy]

  # GET /admin/users
  def index
    @admin_users = Admin::User.all.page(params[:page]).per(10)
  end

  # GET /admin/users/1
  def show
  end

  # GET /admin/users/new
  def new
    @admin_user = Admin::User.new
  end

  # GET /admin/users/1/edit
  def edit
  end

  # POST /admin/users
  def create
    @admin_user = Admin::User.new(admin_user_params)

    respond_to do |format|
      if @admin_user.save
        format.html { redirect_to admin_user_path(@admin_user), notice: 'Admin::User was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /admin/users/1
  def update
    respond_to do |format|
      if @admin_user.update(admin_user_params)
        format.html { redirect_to admin_user_path(@admin_user), notice: 'Admin::User was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /admin/users/1
  def destroy
    @admin_user.destroy
    respond_to do |format|
      format.html { redirect_to admin_users_url, notice: 'Admin::User was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_user
      @admin_user = Admin::User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_user_params
      params.require(:admin_user).permit(:email, :password, :role)
    end
end
