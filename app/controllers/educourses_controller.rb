class EducoursesController < ApplicationController
  before_action :set_educourse, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_educator! #except:[:index, :show]

  # GET /educourses
  # GET /educourses.json
  def index
    @educourses = Educourse.all
  end

  # GET /educourses/1
  # GET /educourses/1.json
  def show
  end

  # GET /educourses/new
  def new
    @educourse = current_educator.educourses.build
  end

  # GET /educourses/1/edit
  def edit
  end

  # POST /educourses
  # POST /educourses.json
  def create
    @educourse = @educourse = current_educator.educourses.build(educourse_params)

    respond_to do |format|
      if @educourse.save
        format.html { redirect_to @educourse, notice: 'Course Added' }
        format.json { render :show, status: :created, location: @educourse }
      else
        format.html { render :new }
        format.json { render json: @educourse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /educourses/1
  # PATCH/PUT /educourses/1.json
  def update
    respond_to do |format|
      if @educourse.update(educourse_params)
        format.html { redirect_to @educourse, notice: 'Educourse was successfully updated.' }
        format.json { render :show, status: :ok, location: @educourse }
      else
        format.html { render :edit }
        format.json { render json: @educourse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /educourses/1
  # DELETE /educourses/1.json
  def destroy
    @educourse.destroy
    respond_to do |format|
      format.html { redirect_to educourses_url, notice: 'Course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_educourse
      @educourse = Educourse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def educourse_params
      params.require(:educourse).permit(:courseCode, :courseName )#:quizID)
    end
end
