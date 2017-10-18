class Admin::FoundersController < AdminController
  before_action :set_admin_founder, only: [:show, :edit, :update, :destroy]

  # GET /admin/founders
  # GET /admin/founders.json
  def index
    @admin_founders = Founder.all
  end

  # GET /admin/founders/1
  # GET /admin/founders/1.json
  def show
  end

  # GET /admin/founders/new
  def new
    @admin_founder = Founder.new
  end

  # GET /admin/founders/1/edit
  def edit
  end

  # POST /admin/founders
  # POST /admin/founders.json
  def create
    @admin_founder = Founder.new(admin_founder_params)

    respond_to do |format|
      if @admin_founder.save
        format.html { redirect_to @admin_founder, notice: 'Founder was successfully created.' }
        format.json { render :show, status: :created, location: @admin_founder }
      else
        format.html { render :new }
        format.json { render json: @admin_founder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/founders/1
  # PATCH/PUT /admin/founders/1.json
  def update
    respond_to do |format|
      if @admin_founder.update(admin_founder_params)
        format.html { redirect_to @admin_founder, notice: 'Founder was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_founder }
      else
        format.html { render :edit }
        format.json { render json: @admin_founder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/founders/1
  # DELETE /admin/founders/1.json
  def destroy
    @admin_founder.destroy
    respond_to do |format|
      format.html { redirect_to admin_founders_url, notice: 'Founder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_founder
      @admin_founder = Founder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_founder_params
      params.fetch(:admin_founder, {})
    end
end
