class RandomExamsController < ApplicationController
  before_action :set_random_exam, only: [:show, :edit, :update, :destroy]

  # GET /random_exams
  # GET /random_exams.json
  def index
    @random_exams = RandomExam.all
  end

  # GET /random_exams/1
  # GET /random_exams/1.json
  def show
  end

  # GET /random_exams/new
  def new
    @random_exam = RandomExam.new
    @random_exam.random_exam_sections.build(Section.all.map{|s| {section_id: s.id}})
  end

  # GET /random_exams/1/edit
  def edit
  end

  # POST /random_exams
  # POST /random_exams.json
  def create
    @random_exam = RandomExam.new(random_exam_params)

    respond_to do |format|
      if @random_exam.save
        format.html { redirect_to @random_exam, notice: 'Random exam was successfully created.' }
        format.json { render :show, status: :created, location: @random_exam }
      else
        format.html { render :new }
        format.json { render json: @random_exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /random_exams/1
  # PATCH/PUT /random_exams/1.json
  def update
    respond_to do |format|
      if @random_exam.update(random_exam_params)
        format.html { redirect_to @random_exam, notice: 'Random exam was successfully updated.' }
        format.json { render :show, status: :ok, location: @random_exam }
      else
        format.html { render :edit }
        format.json { render json: @random_exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /random_exams/1
  # DELETE /random_exams/1.json
  def destroy
    @random_exam.destroy
    respond_to do |format|
      format.html { redirect_to random_exams_url, notice: 'Random exam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_random_exam
      @random_exam = RandomExam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def random_exam_params
      params.require(:random_exam).permit(
        :name,
        random_exam_sections_attributes: [
          :id,
          :selected,
          :section_id,
          :questions_number
        ]
      )
    end
end
